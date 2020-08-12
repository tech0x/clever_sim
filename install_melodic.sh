sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-desktop
sudo apt install python-rosdep ros-melodic-mavros ros-melodic-mavros-extras ros-melodic-mavros-msgs ros-melodic-web-video-server ros-melodic-tf2-geometry-msgs
sudo apt install ros-melodic-rqt*
