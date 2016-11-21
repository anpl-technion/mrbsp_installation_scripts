#!/bin/bash

#from: http://askubuntu.com/questions/428198/getting-installing-gcc-g-4-9-on-ubuntu
sudo add-apt-repository ppa:ubuntu-toolchain-r/test

sudo apt-get update

#from http://charette.no-ip.com:81/programming/2011-12-24_GCCv47/
sudo apt-get install gcc-4.9 g++-4.9 -y

#from http://askubuntu.com/questions/26498/choose-gcc-and-g-version
sudo update-alternatives --remove-all gcc 
sudo update-alternatives --remove-all g++


sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9
