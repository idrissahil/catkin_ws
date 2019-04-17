#! /usr/bin/env python

import rospy
import math
from sensor_msgs.msg import BatteryState, Temperature
from geometry_msgs.msg import Twist, PoseArray, Pose, PoseStamped

rospy.init_node('dist_wifi_node')

wifi_pub = rospy.Publisher('wifi_dist', PoseStamped, queue_size=1)
rate = rospy.Rate(50)

wifi_aware=True
A=1

sigma_x=5
sigma_y=5
sigma_z=5

x_my=1
y_my=1
z_my=1


def callback_gps(gps):
    curr_location_x = gps.pose.position.x
    curr_location_y = gps.pose.position.y
    curr_location_z = gps.pose.position.z
    wifi_strength = A * math.exp(-((((curr_location_x - x_my) * (curr_location_x - x_my)) / (2 * sigma_x * sigma_x)) + (((curr_location_y - y_my) *(curr_location_y - y_my)) / (2 * sigma_y * sigma_y)) + (
                ((curr_location_z - z_my) *(curr_location_z - z_my)) / (2 * sigma_z * sigma_z))))
    wifi=Temperature()
    wifi.temperature=wifi_strength

    distribution=PoseStamped()
    distribution.pose.position.x =sigma_x
    distribution.pose.position.y =sigma_y
    distribution.pose.position.z =sigma_z
    if wifi_aware==True:
        distribution.pose.orientation.w = 1

    #wifi_pub.publish(wifi)
    wifi_pub.publish(distribution)



def main():
    gps_sub = rospy.Subscriber('/mavros/local_position/pose', PoseStamped, callback_gps)
    rospy.spin()


if __name__ == '__main__':
    main()
