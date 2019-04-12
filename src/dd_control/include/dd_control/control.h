#include <dd_control/ControlConfig.h>
#include <dd_control/Velocity.h>
#include <dynamic_reconfigure/server.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <mavros_msgs/RCIn.h>
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <tf2_ros/buffer.h>
#include <tf2_ros/transform_listener.h>

namespace dd_control
{
class Control
{
private:
  ros::NodeHandle nh_;
  ros::NodeHandle nh_priv_;

  // Transform
  tf2_ros::Buffer tf_buffer_;
  tf2_ros::TransformListener* tf_listener_;

  // Subscribers
  ros::Subscriber setpoint_sub_;
  ros::Subscriber cancel_sub_;
  ros::Subscriber pose_sub_;
  ros::Subscriber velocity_sub_;

  // Publishers
  ros::Publisher control_pub_;
  ros::Publisher velocity_pub_;

  // Timers
  ros::Timer pub_timer_;

  // Dynamic reconfigure
  dynamic_reconfigure::Server<dd_control::ControlConfig> cs_;
  dynamic_reconfigure::Server<dd_control::ControlConfig>::CallbackType f_;

  geometry_msgs::PoseStamped last_setpoint_;
  geometry_msgs::PoseStamped current_pose_;
  geometry_msgs::TwistStamped current_velocity_;

  // Max velocity
  double max_xy_vel_;
  double max_z_vel_;

  // XY PID-controller
  double k_p_xy_;
  double k_i_xy_;
  double k_d_xy_;
  double bias_xy_;

  double error_prior_xy_;
  double integral_xy_;

  // Z PID-controller
  double k_p_z_;
  double k_i_z_;
  double k_d_z_;
  double bias_z_;

  double error_prior_z_;
  double integral_z_;

  // Frequency
  double frequency_;

public:
  Control(ros::NodeHandle& nh, ros::NodeHandle& nh_priv);

private:
  void setpointCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);

  void cancelCallback(const std_msgs::Header::ConstPtr& msg);

  void poseCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);

  void velocityCallback(const geometry_msgs::TwistStamped::ConstPtr& msg);

  void timerPublish(const ros::TimerEvent& event);

  void setpointPublish(const geometry_msgs::PoseStamped& setpoint);

  double clamp(double value, double min, double max);

  void configCallback(dd_control::ControlConfig& config, uint32_t level);
};
}  // namespace dd_control
