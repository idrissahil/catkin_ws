#ifndef DD_NAV_GOAL_PANEL_H
#define DD_NAV_GOAL_PANEL_H

#ifndef Q_MOC_RUN
#include <ros/ros.h>
#include <rviz/panel.h>
#endif

#include <QGridLayout>
#include <QSlider>
#include <QDoubleSpinBox>
#include <QComboBox>
#include <QLabel>
#include <QPushButton>

#include <geometry_msgs/PoseStamped.h>

#include <dd_nav_goal/dd_q_combo_box.h>

class QLineEdit;

namespace dd_nav_goal
{
class DDNavGoalPanel : public rviz::Panel
{
  const static int Z_VALUE_PRECISION = 1000; // 3 decimal precision
  const static int NUM_TICK_MARKS = 11;      // 11 tick marks on z-slider

  Q_OBJECT
public:
  DDNavGoalPanel(QWidget* parent = 0);

  virtual void load(const rviz::Config& config);
  virtual void save(rviz::Config config) const;

public Q_SLOTS:

protected Q_SLOTS:

  void updateTopic();

  void posePublish(geometry_msgs::PoseStamped& pose);

  void updateSlider();

  void updateCurrentZValue();

  void updateMinZValue();

  void updateMaxZValue();

  void setTopic(const QString& new_in_topic, const QString& new_out_topic);

  void navGoal2DCallback(const geometry_msgs::PoseStamped::ConstPtr& goal);
  
  void px4PoseCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);
  
  void slamPoseCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);

  void republishSetpoint();

  void cancelSetpoint();

  void arm();

protected:
  QGridLayout* layout;

  DDQComboBox* nav_goal_2d_in_topic_menu_;
  // One-line text editor for entering the outgoing ROS topic name.
  QLineEdit* nav_goal_3d_out_topic_editor_;

  // The current name of the output topic.
  QString nav_goal_2d_in_topic_;
  QString nav_goal_3d_out_topic_;

  QDoubleSpinBox* min_z_value_;
  QDoubleSpinBox* max_z_value_;
  QDoubleSpinBox* current_z_value_;
  QSlider* z_slider_;

  QPushButton* republish_setpoint_;
  QPushButton* cancel_setpoint_;
  QPushButton* arm_;
  
  QLabel* px4_altitude_;
  QLabel* slam_altitude_;

  // The ROS node handle.
  ros::NodeHandle nh_;

  bool has_recieved_pose_;
  geometry_msgs::PoseStamped pose_;

  ros::Subscriber nav_goal_2d_sub_;
  ros::Subscriber px4_pose_sub_;
  ros::Subscriber slam_pose_sub_;

  ros::Publisher nav_goal_3d_pub_;
  ros::Publisher cancel_setpoint_pub_;

  ros::ServiceClient arm_client_;
  ros::ServiceClient offboard_client_;
};
}

#endif // DD_NAV_GOAL_PANEL_H
