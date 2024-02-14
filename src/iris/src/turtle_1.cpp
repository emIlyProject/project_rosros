#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include "iris/turtle.h"  
#include <sstream>
#include <termios.h>
#include <stdio.h>

int getch();
void poseCallback(const turtlesim::Pose::ConstPtr& pose_message);
void moveTurtle(char key);

ros::Publisher velocity_publisher;
ros::Publisher position_publisher;

int main(int argc, char **argv) {
    ros::init(argc, argv, "primary_node");
    ros::NodeHandle n;

    velocity_publisher = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);
    position_publisher = n.advertise<iris::turtle>("/turtle_position", 10);

    ros::Subscriber pose_subscriber = n.subscribe("/turtle1/pose", 10, poseCallback);

    std::cout << "pake W,A,S,D" << std::endl;

    ros::Rate loop_rate(100);

    while (ros::ok()) {
        int key = getch(); 
        
        moveTurtle(key); //eksekusi input keyboard
        
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

void poseCallback(const turtlesim::Pose::ConstPtr& pose_message) {
    iris::turtle position_message;
    position_message.x = pose_message->x;
    position_message.y = pose_message->y;
    position_message.theta = pose_message->theta;

    position_publisher.publish(position_message);
}

void moveTurtle(char key) {
    geometry_msgs::Twist vel_msg;
    switch (key) {
        case 'w': vel_msg.linear.x = 2.0; break; // Increase speed
        case 's': vel_msg.linear.x = -2.0; break;
        case 'a': vel_msg.angular.z = 2.0; break;
        case 'd': vel_msg.angular.z = -2.0; break;
        default: vel_msg.linear.x = 0; vel_msg.angular.z = 0; break;
    }

    velocity_publisher.publish(vel_msg);
}

//non-blok input keyboard
int getch() {
    static struct termios oldt, newt;
    tcgetattr(STDIN_FILENO, &oldt); 
    newt = oldt;
    newt.c_lflag &= ~(ICANON | ECHO); 
    tcsetattr(STDIN_FILENO, TCSANOW, &newt); 

    int ch = getchar();

    tcsetattr(STDIN_FILENO, TCSANOW, &oldt); 
    return ch;
}