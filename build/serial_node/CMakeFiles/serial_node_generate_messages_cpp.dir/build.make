# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/orangepi/Desktop/ROS_Project/ros_to_stm32/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build

# Utility rule file for serial_node_generate_messages_cpp.

# Include the progress variables for this target.
include serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/progress.make

serial_node/CMakeFiles/serial_node_generate_messages_cpp: /home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node/imu_msg.h


/home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node/imu_msg.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node/imu_msg.h: /home/orangepi/Desktop/ROS_Project/ros_to_stm32/src/serial_node/msg/imu_msg.msg
/home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node/imu_msg.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/orangepi/Desktop/ROS_Project/ros_to_stm32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from serial_node/imu_msg.msg"
	cd /home/orangepi/Desktop/ROS_Project/ros_to_stm32/src/serial_node && /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/orangepi/Desktop/ROS_Project/ros_to_stm32/src/serial_node/msg/imu_msg.msg -Iserial_node:/home/orangepi/Desktop/ROS_Project/ros_to_stm32/src/serial_node/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p serial_node -o /home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node -e /opt/ros/noetic/share/gencpp/cmake/..

serial_node_generate_messages_cpp: serial_node/CMakeFiles/serial_node_generate_messages_cpp
serial_node_generate_messages_cpp: /home/orangepi/Desktop/ROS_Project/ros_to_stm32/devel/include/serial_node/imu_msg.h
serial_node_generate_messages_cpp: serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/build.make

.PHONY : serial_node_generate_messages_cpp

# Rule to build all files generated by this target.
serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/build: serial_node_generate_messages_cpp

.PHONY : serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/build

serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/clean:
	cd /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build/serial_node && $(CMAKE_COMMAND) -P CMakeFiles/serial_node_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/clean

serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/depend:
	cd /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orangepi/Desktop/ROS_Project/ros_to_stm32/src /home/orangepi/Desktop/ROS_Project/ros_to_stm32/src/serial_node /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build/serial_node /home/orangepi/Desktop/ROS_Project/ros_to_stm32/build/serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial_node/CMakeFiles/serial_node_generate_messages_cpp.dir/depend
