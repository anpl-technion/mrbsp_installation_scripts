#!/bin/bash

sudo chmod a+rw /dev/ttyUSB0
rosrun rosaria RosAria _port:=/dev/ttyUSB0
