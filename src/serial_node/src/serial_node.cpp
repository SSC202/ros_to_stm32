#include "ros/ros.h"
#include "std_msgs/String.h"
#include "serial/serial.h"
#include <iostream>
#include <string>
#include <sstream>
#include "/home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node/imu_msg.h"

using namespace std;

#define sBUFFER_SIZE 1024
#define rBUFFER_SIZE 1024

unsigned char s_buffer[1024];
unsigned char r_buffer[1024];

serial::Serial _serial;

typedef union 
{
    float data;
    unsigned char stm32_to_ros[4];
}_ROS_MSG;

_ROS_MSG pitch;
_ROS_MSG roll;
_ROS_MSG yaw;

int main(int argc,char *argv[])
{
    ros::init(argc,argv,"Serial_Node");
    ros::NodeHandle nh;

    //打开串口
    try
    {
        _serial.setPort("/dev/ttyS3");
        _serial.setBaudrate(115200);
        serial::Timeout to = serial::Timeout::simpleTimeout(1000);
        _serial.setTimeout(to);
        _serial.open();
    }
    catch(serial::IOException & e)
    {
        ROS_INFO_STREAM("Failed to open Port");
        return -1;
    }
    ROS_INFO_STREAM("Success to open Port");

    int cnt = 0;
    ros::Rate loop_rate(500);
    ros::Publisher imu_pub = nh.advertise<serial_node::imu_msg>("imu",1000);
    while(ros::ok())
    {
        serial_node::imu_msg msg;
        if(_serial.available())
        {
            //读取串口数据
            size_t bytes_read = _serial.read(r_buffer,_serial.available());

            int state = 0;
            unsigned char buffer[12] = {0};
            for(int i = 0;i < bytes_read && i < rBUFFER_SIZE ;i++)
            {
                if(state == 0 && r_buffer[i] == 0xAA)
                {
                    state++;
                }
                else if(state == 1 && r_buffer[i] == 0xBB)
                {
                    state++;
                }
                else if(state >= 2 && state < 14)
                {
                    buffer[state - 2] = r_buffer[i];
                    state++;
                    if(state == 14)
                    {
                        for(int k = 0;k < 4;k++)
                        {
                            pitch.stm32_to_ros[k] = buffer[k];
                            roll.stm32_to_ros[k] = buffer[4+k];
                            yaw.stm32_to_ros[k] = buffer[8+k];
                        }
                        ROS_INFO("%.2f,%.2f,%.2f,%d",pitch.data,roll.data,yaw.data,cnt);
                        state = 0;
                    }
                }
                else state = 0;
            }
        }
        //发布imu数据
        msg.roll = roll.data;
        msg.pitch = pitch.data;
        msg.yaw = yaw.data;
        imu_pub.publish(msg);
        loop_rate.sleep();
        cnt++;
    }
    _serial.close();
    return 0;
}




