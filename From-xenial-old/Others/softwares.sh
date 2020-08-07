#!/bin/bash
sudo apt-get update;
sudo apt-get -y install terminator;
sudo apt-get -y install vim;
sudo apt-get -y install bcmwl-kernel-source;
sudo apt-get -y install bash-completion;

##ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116;
sudo apt-get update;
sudo apt-get -y install ros-kinetic-desktop-full;
sudo rosdep init;
rosdep update;
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;

##Setup Catkin Workspace
mkdir -p ~/catkin_ws/src;
cd ~/catkin_ws/;
catkin_make;
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc;
source ~/.bashrc;
echo "source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash" >> ~/.bashrc;
echo "source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases" >> ~/.bashrc;
cd ~;

##GIT
sudo apt-get -y install git;

##Clone robosub repo
cd ~/catkin_ws/src/;
git clone https://github.com/auv-iitb/robosub.git;
#git clone https://github.com/srv/avt_vimba_camera.git;
#cd ~;

##LIBRARIES
sudo apt-get -y install libfftw3-dev;
sudo apt-get -y install libpugixml-dev;
sudo apt-get -y install python-argcomplete;
sudo apt-get -y install ros-kinetic-bfl;
sudo apt-get -y install tree;
sudo apt-get -y install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control;

##Try compiling
cd ~/catkin_ws/;
rospack profile;
catkin_make;

##VMware
##download vmware for linux 64 bit to ~/Downloads from,
##https://my.vmware.com/en/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/12_0
#cd ~/Downloads/;
#chmod +x VMware-Player-12.5.6-5528349.x86_64.bundle;
#sudo ./VMware-Player-12.5.6-5528349.x86_64.bundle;
##copy Windows 7 folder from the previous pendrive backup
#mkdir ~/Shared;
#roscd auv_acoustics/;
#cp -r Acq1/ ~/Shared/;
##download lord microstrain iron calibrarion from http://www.microstrain.com/software
##download vimba driver from https://cdn.alliedvision.com/fileadmin/content/software/software/Vimba/Vimba_v2.0_Linux.tgz
##instructions for vimba driver https://cdn.alliedvision.com/fileadmin/content/documents/products/software/software/Vimba/appnote/Vimba_installation_under_Linux.pdf
#cd ~/Downloads/;
#sudo tar -xf Vimba_v2.0_Linux.tgz -C /opt;
#cd /opt/Vimba_2_0/VimbaGigETL/;
#sudo ./Install.sh;
echo "export PATH=$PATH:/opt/Vimba_2_0/Tools/Viewer/Bin/x86_64bit/" >> ~/.bashrc;
#. ~/.bashrc;
