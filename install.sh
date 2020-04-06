#!/bin/bash
### CLEVER
mkdir -p catkin_ws/src
cd catkin_ws/src
cd ../
catkin_make
source devel/setup.bash
cd src
git clone https://github.com/CopterExpress/clever.git

# Patching

cd clever
cd clover 

../../../../patch_clever.sh
# END

# DEP
cd ../../../
rosdep install -y --from-paths src --ignore-src -r

# END

catkin_make
source devel/setup.bash

### END

cd ../


### PX4
git clone https://github.com/PX4/Firmware.git
cd Firmware
DONT_RUN=1 make px4_sitl_default gazebo
cp -fRa ../models/iris ./Tools/sitl_gazebo/models
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo
cd ../
source ./env.sh