#!/bin/bash
#---Variables(For folders and dirs paths)---#
SYSTEM=ubuntu-16-04
LAB_NAME=ANPL
WORKING_FOLDER=~/$LAB_NAME/scripts
PREFIX=/usr/ANPLprefix

cd
mkdir -p $PREFIX
echo "export PATH=\$PATH:.:/home/$USER/$LAB_NAME/scripts/$SYSTEM" >> ~/.bashrc
source ~/.bashrc

# initial ubuntu workspace
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
mkdir -p $LAB_NAME && cd $LAB_NAME
git clone https://bitbucket.org/ANPL/anpl_scripts scripts
cd $WORKING_FOLDER/$SYSTEM
./install-git.sh
./setup-ubuntu-env.sh
source ~/.bashrc
./install-dos2unix.sh
./setup-scripts-env-ubuntu.sh
source ~/.bashrc

#install cuda
 install-cuda9.2.sh

# install modules
install-java-jdk.sh
install-openssl-server.sh
sudo apt install curl -y
sudo apt install cmake-qt-gui cmake -y # TODO: make script


# install programs
install-GVim.sh
install-lyx.sh
install-smartgit.sh
# install qtcteator (without script)
install-clion.sh
install-qgroundcontrol.sh
install-BCN3D-Cura.sh
install-sublime.sh
install-filezila.sh
install-chrome.sh
##install-matlab-network.sh
instal-matlab-jen01.sh
# install gimp (without script)
# install inkspace (without script)

# ros packages (via apt-get)
install-ros-kinetic.sh
source ~/.bashrc
install-ros-packages.sh
#setup-catkin_ws.sh

install-octomap.sh
install-mavros.sh
install-turtlebot.sh

# 3rd party code
install-toolbox-gtsam.sh
install-gtsam.sh
install-vlfeat.sh
install-libpcl-1.8.sh
install-libccd.sh
install-libfcl.sh
install-ompl.sh #(maybe opl_app)
install-diverse-short-path.sh
install-csm.sh
install-planar-icp.sh
install-orbslam2.sh
install-zed-sdk.sh
#install-libnabo.sh
#install-libpointmatcher.sh
#install-libpointmatcher-ros.sh

# ros packages (install catkin_ws)
#install-pioneer-simulation.sh
install-rotors-simulation.sh
install-viso2.sh

# code
clone-common-computation.sh
clone-cmakes.sh


# ANPL infrastructure
clone-and-build-cpp-inf.sh

