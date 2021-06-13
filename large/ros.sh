sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654;
sudo apt update;
sudo apt -y install ros-melodic-desktop-full;
sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential;

echo "source /opt/ros/melodic/setup.bash;" >> ~/.bashrc;
source ~/.bashrc;

sudo rosdep init;
sudo rosdep update;
sudo rosdep fix-permissions;

source ~/.bashrc;
mkdir -p ~/catkin_ws/src;
cd ~/catkin_ws;
catkin_make;
source devel/setup.bash;

cd src;
git clone git@github.com:auv-iitb/robosub.git;
git clone git@github.com:auv-iitb/lnt-rov.git;
echo "source ~/catkin_ws/devel/setup.bash;
# source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash;
# source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases;
alias wrapper.py='python ~/catkin_ws/src/robosub/auv_utils/src/utility/wrapper/wrapper.py';
alias cm6='cm -j6';
" >> ~/.bashrc;
source ~/.bashrc;

sudo apt -y install libfftw3-dev;
sudo apt -y install ros-melodic-bfl;
sudo apt -y install libpcap-dev;
sudo apt -y install libpugixml-dev;
sudo apt -y install libyaml-cpp-dev;
sudo apt -y install qt5-default;
sudo apt -y install libeigen3-dev;
sudo apt -y install ros-melodic-gazebo-ros-pkgs ros-melodic-gazebo-ros-control;
source ~/.bashrc;
