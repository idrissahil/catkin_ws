#include <dd_nav_goal/dd_nav_goal.h>

#include <QPainter>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QTimer>
#include <QSlider>
#include <QString>

#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>


namespace dd_nav_goal
{
DDNavGoalPanel::DDNavGoalPanel(QWidget* parent)
    : rviz::Panel(parent), has_recieved_pose_(false)
{
  nav_goal_2d_in_topic_menu_ = new DDQComboBox;

  nav_goal_3d_out_topic_editor_ = new QLineEdit;

  z_slider_ = new QSlider(Qt::Vertical);
  z_slider_->setMinimum(-10 * Z_VALUE_PRECISION);
  z_slider_->setMaximum(10 * Z_VALUE_PRECISION);
  z_slider_->setTickPosition(QSlider::TicksBothSides);
  int abs_diff = std::abs(z_slider_->maximum() - z_slider_->minimum());
  z_slider_->setTickInterval(abs_diff / (NUM_TICK_MARKS - 1));

  max_z_value_ = new QDoubleSpinBox;
  max_z_value_->setMinimum(-std::numeric_limits<double>::infinity());
  max_z_value_->setMaximum(std::numeric_limits<double>::infinity());
  max_z_value_->setSingleStep(0.5);

  current_z_value_ = new QDoubleSpinBox;
  current_z_value_->setMinimum(-std::numeric_limits<double>::infinity());
  current_z_value_->setMaximum(std::numeric_limits<double>::infinity());
  current_z_value_->setSingleStep(0.01);
  current_z_value_->setDecimals(3);
  current_z_value_->setAccelerated(true);

  min_z_value_ = new QDoubleSpinBox;
  min_z_value_->setMinimum(-std::numeric_limits<double>::infinity());
  min_z_value_->setMaximum(std::numeric_limits<double>::infinity());
  min_z_value_->setSingleStep(0.5);

  republish_setpoint_ = new QPushButton;
  republish_setpoint_->setText("Start");
  republish_setpoint_->setStyleSheet(
      QString("color: %1").arg(QColor(Qt::green).name()));
  republish_setpoint_->setDisabled(true);

  cancel_setpoint_ = new QPushButton;
  cancel_setpoint_->setText("Stop");
  cancel_setpoint_->setStyleSheet(
      QString("color: %1").arg(QColor(Qt::red).name()));
  cancel_setpoint_->setDisabled(true);

  arm_ = new QPushButton;
  arm_->setText("Arm");
  arm_->setStyleSheet(
      QString("color: %1").arg(QColor(Qt::blue).name()));
  arm_->setDisabled(false);

  px4_altitude_ = new QLabel;

  slam_altitude_ = new QLabel;

  layout = new QGridLayout();
  layout->addWidget(new QLabel("Input 2D Nav Goal Topic:"), 0, 0, 1, 1);
  layout->addWidget(nav_goal_2d_in_topic_menu_, 0, 1, 1, 3);
  layout->addWidget(new QLabel("Output 3D Nav Goal Topic:"), 1, 0, 1, 1);
  layout->addWidget(nav_goal_3d_out_topic_editor_, 1, 1, 1, 3);
  layout->addWidget(new QLabel("Max altitude:"), 2, 0);
  layout->addWidget(max_z_value_, 2, 2, 1, 2);
  layout->addWidget(z_slider_, 3, 2, 5, 1);
  layout->addWidget(new QLabel("Setpoint altitude:"), 5, 0);
  layout->addWidget(current_z_value_, 5, 1);
  layout->addWidget(new QLabel("PX4 altitude:"), 6, 0);
  layout->addWidget(px4_altitude_, 6, 1);
  layout->addWidget(new QLabel("SLAM altitude:"), 7, 0);
  layout->addWidget(slam_altitude_, 7, 1);
  layout->addWidget(new QLabel("Min altitude:"), 8, 0);
  layout->addWidget(min_z_value_, 8, 2, 1, 2);
  layout->addWidget(cancel_setpoint_, 9, 1);
  layout->addWidget(republish_setpoint_, 9, 2);
  layout->addWidget(arm_, 10, 1, 1, 2);
  setLayout(layout);

  // Next we make signal/slot connections.
  connect(nav_goal_2d_in_topic_menu_, SIGNAL(activated(int)), this,
          SLOT(updateTopic()));
  connect(nav_goal_3d_out_topic_editor_, SIGNAL(editingFinished()), this,
          SLOT(updateTopic()));
  connect(z_slider_, SIGNAL(valueChanged(int)), this, SLOT(updateSlider()));
  connect(current_z_value_, SIGNAL(valueChanged(double)), this,
          SLOT(updateCurrentZValue()));
  connect(min_z_value_, SIGNAL(valueChanged(double)), this,
          SLOT(updateMinZValue()));
  connect(max_z_value_, SIGNAL(valueChanged(double)), this,
          SLOT(updateMaxZValue()));
  connect(republish_setpoint_, SIGNAL(released()), this,
          SLOT(republishSetpoint()));
  connect(cancel_setpoint_, SIGNAL(released()), this, SLOT(cancelSetpoint()));
  connect(arm_, SIGNAL(released()), this, SLOT(arm()));

  px4_pose_sub_ = nh_.subscribe<geometry_msgs::PoseStamped>(
      "/mavros/local_position/pose", 1, &DDNavGoalPanel::px4PoseCallback, this);

  slam_pose_sub_ = nh_.subscribe<geometry_msgs::PoseStamped>(
      "/mavros/vision_pose/pose", 1, &DDNavGoalPanel::slamPoseCallback, this);

  arm_client_ = nh_.serviceClient<mavros_msgs::CommandBool>("/mavros/cmd/arming");
  offboard_client_ = nh_.serviceClient<mavros_msgs::SetMode>("/mavros/set_mode");
}

void DDNavGoalPanel::load(const rviz::Config& config)
{
  rviz::Panel::load(config);
  QString topic_in;
  if (config.mapGetString("nav_goal_2d_in_topic", &topic_in))
  {
    nav_goal_2d_in_topic_menu_->clear();
    nav_goal_2d_in_topic_menu_->insertItem(0, topic_in);
    nav_goal_2d_in_topic_menu_->setCurrentIndex(0);
    nav_goal_2d_in_topic_menu_->setCurrentText(topic_in);
    updateTopic();
  }

  QString topic_out;
  if (config.mapGetString("nav_goal_3d_out_topic", &topic_out))
  {
    nav_goal_3d_out_topic_editor_->setText(topic_out);
    updateTopic();
  }

  float slider_min;
  if (config.mapGetFloat("z_slider_min", &slider_min))
  {
    min_z_value_->setValue(slider_min / Z_VALUE_PRECISION);
    z_slider_->setMinimum(slider_min);
  }

  float slider_max;
  if (config.mapGetFloat("z_slider_max", &slider_max))
  {
    max_z_value_->setValue(slider_max / Z_VALUE_PRECISION);
    z_slider_->setMaximum(slider_max);
  }

  int slider_value;
  if (config.mapGetInt("z_slider_value", &slider_value))
  {
    current_z_value_->setValue(slider_value / Z_VALUE_PRECISION);
    z_slider_->setValue(slider_value);
  }
}

void DDNavGoalPanel::save(rviz::Config config) const
{
  rviz::Panel::save(config);
  config.mapSetValue("nav_goal_2d_in_topic", nav_goal_2d_in_topic_);
  config.mapSetValue("nav_goal_3d_out_topic", nav_goal_3d_out_topic_);
  config.mapSetValue("z_slider_value", z_slider_->value());
  config.mapSetValue("z_slider_min", z_slider_->minimum());
  config.mapSetValue("z_slider_max", z_slider_->maximum());
}

void DDNavGoalPanel::updateTopic()
{
  setTopic(nav_goal_2d_in_topic_menu_->itemText(
               nav_goal_2d_in_topic_menu_->currentIndex()),
           nav_goal_3d_out_topic_editor_->text());
}

void DDNavGoalPanel::setTopic(const QString& new_in_topic,
                              const QString& new_out_topic)
{
  QString new_out_topic_temp = new_out_topic;
  if (new_out_topic_temp[0] != QChar('/'))
  {
    new_out_topic_temp.prepend('/');
    nav_goal_3d_out_topic_editor_->setText(new_out_topic_temp);
  }
  if (new_in_topic != nav_goal_2d_in_topic_ ||
      new_out_topic_temp != nav_goal_3d_out_topic_)
  {
    nav_goal_2d_in_topic_ = new_in_topic;
    nav_goal_3d_out_topic_ = new_out_topic_temp;
    if (nav_goal_3d_out_topic_ == "/" || nav_goal_2d_in_topic_ == "")
    {
      nav_goal_2d_sub_.shutdown();
      nav_goal_3d_pub_.shutdown();
      republish_setpoint_->setDisabled(true);
      cancel_setpoint_->setDisabled(true);
      cancel_setpoint_pub_.shutdown();
    }
    else if (nav_goal_3d_out_topic_ == nav_goal_2d_in_topic_)
    {
      ROS_WARN("Nav Goal: The two topics shall not be the same!");
      nav_goal_3d_out_topic_editor_->setText(
          "The two topics shall not be the same!");
      nav_goal_2d_sub_.shutdown();
      nav_goal_3d_pub_.shutdown();
      republish_setpoint_->setDisabled(true);
      cancel_setpoint_->setDisabled(true);
      cancel_setpoint_pub_.shutdown();
    }
    else
    {
      nav_goal_2d_sub_ = nh_.subscribe<geometry_msgs::PoseStamped>(
          nav_goal_2d_in_topic_.toStdString(), 2,
          &DDNavGoalPanel::navGoal2DCallback, this);
      try
      {
        nav_goal_3d_pub_ = nh_.advertise<geometry_msgs::PoseStamped>(
            nav_goal_3d_out_topic_.toStdString(), 2);
        cancel_setpoint_pub_ = nh_.advertise<std_msgs::Header>(
            nav_goal_3d_out_topic_.toStdString() + "/cancel", 2);
        republish_setpoint_->setDisabled(false);
        cancel_setpoint_->setDisabled(false);
      }
      catch (ros::InvalidNameException e)
      {
        ROS_WARN("Nav Goal: %s", e.what());
      }
    }
    // rviz::Panel defines the configChanged() signal.  Emitting it
    // tells RViz that something in this panel has changed that will
    // affect a saved config file.  Ultimately this signal can cause
    // QWidget::setWindowModified(true) to be called on the top-level
    // rviz::VisualizationFrame, which causes a little asterisk ("*")
    // to show in the window's title bar indicating unsaved changes.
    Q_EMIT configChanged();
  }

  // TODO: Disable slider?
}

void DDNavGoalPanel::navGoal2DCallback(
    const geometry_msgs::PoseStamped::ConstPtr& goal)
{
  has_recieved_pose_ = true;
  pose_ = *goal;
  pose_.pose.position.z = current_z_value_->value();
  nav_goal_3d_pub_.publish(pose_);
}

void DDNavGoalPanel::posePublish(geometry_msgs::PoseStamped& pose)
{
  if (has_recieved_pose_)
  {
    // Update stamp
    pose.header.stamp = ros::Time::now();
    nav_goal_3d_pub_.publish(pose);
  }
}

void DDNavGoalPanel::updateSlider()
{
  current_z_value_->setValue(((double)z_slider_->value()) / Z_VALUE_PRECISION);
  min_z_value_->setMaximum(current_z_value_->value());
  max_z_value_->setMinimum(current_z_value_->value());
  // Update pose such that it is correct when republished
  pose_.pose.position.z = current_z_value_->value();
  posePublish(pose_);
}

void DDNavGoalPanel::updateCurrentZValue()
{
  z_slider_->setValue(current_z_value_->value() * Z_VALUE_PRECISION);
  min_z_value_->setMaximum(current_z_value_->value());
  max_z_value_->setMinimum(current_z_value_->value());
  // Update pose such that it is correct when republished
  pose_.pose.position.z = current_z_value_->value();
  posePublish(pose_);
}

void DDNavGoalPanel::updateMinZValue()
{
  z_slider_->setMinimum(min_z_value_->value() * Z_VALUE_PRECISION);
  int abs_diff = std::abs(z_slider_->maximum() - z_slider_->minimum());
  z_slider_->setTickInterval(abs_diff / (NUM_TICK_MARKS - 1));
  current_z_value_->setMinimum(min_z_value_->value());
}

void DDNavGoalPanel::updateMaxZValue()
{
  z_slider_->setMaximum(max_z_value_->value() * Z_VALUE_PRECISION);
  int abs_diff = std::abs(z_slider_->maximum() - z_slider_->minimum());
  z_slider_->setTickInterval(abs_diff / (NUM_TICK_MARKS - 1));
  current_z_value_->setMaximum(max_z_value_->value());
}

void DDNavGoalPanel::px4PoseCallback(
    const geometry_msgs::PoseStamped::ConstPtr& msg)
{
  px4_altitude_->setText(QString::number(msg->pose.position.z, 'f', 2));
}

void DDNavGoalPanel::slamPoseCallback(
    const geometry_msgs::PoseStamped::ConstPtr& msg)
{
  slam_altitude_->setText(QString::number(msg->pose.position.z, 'f', 2));
}

void DDNavGoalPanel::republishSetpoint() { posePublish(pose_); }

void DDNavGoalPanel::cancelSetpoint()
{
  std_msgs::Header msg;
  msg.stamp = ros::Time::now();
  cancel_setpoint_pub_.publish(msg);
}

void DDNavGoalPanel::arm()
{
  mavros_msgs::CommandBool arm;
  arm.request.value = true;

  if (!arm_client_.call(arm))
  {
    // ROS_ERROR("%s", arm.response.success.c_str());
    return;
  }

  mavros_msgs::SetMode mode;
  mode.request.base_mode = 0;
  mode.request.custom_mode = "offboard";

  if (!offboard_client_.call(mode))
  {
    // ROS_ERROR("%s", mode.response.status_message.c_str());
    return;
  }
}
}

// Tell pluginlib about this class.  Every class which should be
// loadable by pluginlib::ClassLoader must have these two lines
// compiled in its .cpp file, outside of any namespace scope.
#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(dd_nav_goal::DDNavGoalPanel, rviz::Panel)
