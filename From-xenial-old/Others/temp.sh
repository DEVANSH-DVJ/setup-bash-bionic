source ~/.bashrc;
sudo apt -y install python-rosinstall python-rosinstall-generator python-wstool build-essential libfftw3-dev ros-kinetic-bfl libpcap0.8 libpcap0.8-dev libpcap-dev libpugixml-dev libpugixml1v5 pugixml-doc ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control tree python-argcomplete pylint;
#ROS ENVIRONMENT SETUP
mkdir -p ~/catkin_ws/src;
cd ~/catkin_ws;
catkin_make;
source devel/setup.bash;
#ROBOSUB DOWNLOAD
cd src;
git clone git@github.com:auv-iitb/robosub.git;
echo "source ~/catkin_ws/devel/setup.bash
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases" >> ~/.bashrc;
source ~/.bashrc;
#INSTALLING ROBOSUB
cd ~/catkin_ws;
catkin_make;
