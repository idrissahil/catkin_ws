#! /usr/bin/env python

import rospy
from sensor_msgs.msg import BatteryState
from geometry_msgs.msg import Twist, PoseArray, Pose, PoseStamped, TwistStamped
from sensor_msgs.msg import LaserScan
from mavros_msgs.msg import PositionTarget
import random
import math



rospy.init_node('rrt_charging_drone')

rrt_pub = rospy.Publisher('/mavros/setpoint_position/local', PoseStamped, queue_size=1)
rate = rospy.Rate(50)

ranges=[]
#success_node=[]
Node_list=[]


state_drone=1
index_rrt = 5

x_charge=9
y_charge=9
z_charge=9

start_x=0
start_y=0
start_z=0

import random
import math
#import matplotlib.pyplot as plt

x_charge=20
y_charge=20
z_charge=20

start_x=0
start_y=0
start_z=0

class Node():
    def __init__(self, x, y, z, x_diff, y_diff,z_diff,total_distance, parent_node = None ):
        self.x = x
        self.y = y
        self.z = z
        self.parent_node = parent_node
        self.total_parents=0
        self.x_diff = x_diff
        self.y_diff = y_diff
        self.z_diff = z_diff
        self.total_distance = total_distance



boost_number=[0]
def rand_node(counter_boost, node_list_length):
    #print(goal_distance)
    x_min = -10
    y_min = -10
    z_min = 0

    x_max = 20
    y_max = 20
    z_max = 20
    x_rand = random.uniform(x_min, x_max)
    y_rand = random.uniform(y_min, y_max)
    z_rand = random.uniform(z_min, z_max)
    if counter_boost%10==0: #Boost the search towards the goal
        x_rand=x_charge
        y_rand = y_charge
        z_rand=z_charge
        boost_number[0]=boost_number[0]+1
        #print("boost", boost_number[0])
    if node_list_length>3000 and node_list_length/2==0:
        x_rand=x_charge + random.uniform(x_charge-1, x_charge+1)
        y_rand = y_charge + random.uniform(y_charge-1, y_charge+1)
        z_rand=z_charge + random.uniform(z_charge-1, z_charge+1)
        boost_number[0]=boost_number[0]+1
        #print("boost", boost_number[0])

    return x_rand, y_rand, z_rand

def find_closest_node(x_rand, y_rand, z_rand, node_list):
    dist_list = []
    for node in node_list:
        distance = math.sqrt(math.pow((node.x - x_rand), 2) + math.pow((node.y - y_rand), 2)+ math.pow((node.z - z_rand), 2))
        dist_list.append(distance)
    goal_distance = min(dist_list)
    closest_index = dist_list.index(min(dist_list))
    closest_node = node_list[closest_index]
    return closest_node, goal_distance, closest_index

def find_velocity(closest_node, x_rand, y_rand, z_rand):

    x_diff=x_rand-closest_node.x #meter per second speed
    y_diff=y_rand-closest_node.y
    z_diff=z_rand-closest_node.z

    return x_diff, y_diff, z_diff


def Collision(x, y, z):
    collision = True
    if x <=-10  or x > 20:
        #print("2")
        collision = False
    if y <= -10  or y > 20:
        #print("3")
        collision = False
    if z < 0.01 or z > 20:
        #print("4")
        collision = False
    #if x <6 and x > 4 and y<6 and y>4:
        #print("5")
    #    collision = False
    return collision

def go_to_goal(near_x , near_y, near_z, x_diff, y_diff, z_diff):
    counter = 0
    curr_x=near_x
    curr_y=near_y
    curr_z=near_z
    collision = True
    while counter < 70:
        curr_x = curr_x + x_diff*0.01  #Go to node for 70 ms
        curr_y = curr_y + y_diff*0.01
        curr_z = curr_z + z_diff*0.01
        counter = counter + 1
        collision = Collision(curr_x, curr_y, curr_z)
        if collision==False:
            break
    return curr_x, curr_y, curr_z, collision, counter


def backtracking(Node_List, final_node):
    controls_x = []
    controls_y = []
    controls_z = []
    x_drone =[]
    y_drone =[]
    z_drone =[]

    times = []
    #index = len(Node_List)
    index=len(Node_List)-1
    print(index)
    car_time=0
    for i in range(final_node.total_parents):

        true_node = Node_List[index]
        x_drone.append(true_node.x)
        y_drone.append(true_node.y)
        z_drone.append(true_node.z)

        controls_x.append(true_node.x_diff)
        controls_y.append(true_node.y_diff)
        controls_z.append(true_node.z_diff)
        index = true_node.parent_node
    x_drone.reverse()
    y_drone.reverse()
    z_drone.reverse()
    controls_x.reverse()
    controls_y.reverse()
    controls_z.reverse()
    return controls_x, controls_y,controls_z, x_drone, y_drone, z_drone

def main_rrt(start_x, start_y,start_z):
    start_node = Node(start_x, start_y, start_z, x_diff=0, y_diff=0, z_diff=0, total_distance=0)
    Node_List = [start_node]
    goal_reach_distance = 1
    goal_reached = False
    goal_distance2=10
    counter_boost=0
    while goal_reached == False:
        x_rand, y_rand, z_rand = rand_node(counter_boost, len(Node_List))
        closest_node, goal_distance, closest_index = find_closest_node(x_rand, y_rand,z_rand, Node_List)
        x_diff, y_diff, z_diff = find_velocity(closest_node, x_rand, y_rand, z_rand)
        curr_x, curr_y, curr_z, collision, counter = go_to_goal( closest_node.x , closest_node.y, closest_node.z, x_diff, y_diff, z_diff)
        distance_travelled = math.sqrt(math.pow((closest_node.x-curr_x), 2) + math.pow((closest_node.y-curr_y), 2) + math.pow((closest_node.z-curr_z), 2))
        Suc_Node = Node(x=curr_x, y=curr_y,z=curr_z, parent_node=closest_index, x_diff=x_diff, y_diff=y_diff, z_diff=z_diff, total_distance=0)
        #print(collision)
        if collision==True:
            Suc_Node.total_parents = 1 + closest_node.total_parents
            Suc_Node.total_distance= distance_travelled + closest_node.total_distance
            Node_List.append(Suc_Node)
            ignore1, goal_distance2, ignore2 = find_closest_node(x_charge, y_charge, z_charge, Node_List)
            #print(goal_distance2)
        if goal_distance2 <= goal_reach_distance:
            #print("reached", goal_distance2)
            goal_reached = True
        print("nodes", len(Node_List))
        counter_boost=counter_boost+1
    controls_x2=[]
    controls_y2 =[]
    controls_z2=[]
    controls_x, controls_y,controls_z, x_drone, y_drone, z_drone = backtracking(Node_List, Suc_Node)

    for i in range(len(controls_x)):
        counter=0
        while counter<70:
            controls_x2.append(controls_x[i])
            controls_y2.append(controls_y[i])
            controls_z2.append(controls_z[i])
            counter=counter+1
    print("number of nodes",len(Node_List))
    print("boost number", boost_number)
    print("sum x2", 0.01*sum(controls_x2))
    print("x last node", Suc_Node.x, "ylast node", Suc_Node.y, "z last node", Suc_Node.z)
    #print(70*0.0001*sum(controls_x)) # controls given in 70*0.0001

    print('x_start',x_drone[0], 'x_end', x_drone[-1])
    print("total distance",Suc_Node.total_distance)
    #plt.plot(x_drone, y_drone, 'ro')
    #plt.axis([-10, 10, -10, 10])
    #plt.show()
    return Suc_Node, Node_List


def callback_gps(gps):
    global ranges
    global angle_min
    global state_drone
    global Node_list
    global success_node
    global index_rrt
    print ("state drone", state_drone)
    if state_drone==1:
        success_node, Node_list = main_rrt(gps.pose.position.x, gps.pose.position.y, gps.pose.position.z )

        state_drone = 2
    curr_rrt=PoseStamped()
    curr_rrt.pose.position.x=Node_list[index_rrt].x
    curr_rrt.pose.position.y=Node_list[index_rrt].y
    curr_rrt.pose.position.z=Node_list[index_rrt].z
    curr_rrt.header.frame_id = "map"
    rrt_pub.publish(curr_rrt)

    print ("state drone2", state_drone)
    print("success node", Node_list[3].z)




def main():
    gps_sub = rospy.Subscriber('/mavros/local_position/pose', PoseStamped, callback_gps)
    print('spinning')
    rospy.spin()

if __name__ == '__main__':
    main()