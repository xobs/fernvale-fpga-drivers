#!/bin/sh
sudo ./configure.sh novena_fpga.bit 
sudo ./novena-fpga -romulate
sudo ./novena-fpga -romulate
sudo ./novena-fpga -rul fernly-loader.bin 
echo 17 | sudo tee /sys/class/gpio/export
echo out | sudo tee /sys/class/gpio/gpio17/direction
echo 1 | sudo tee /sys/class/gpio/gpio17/value
sudo chmod a+rw /sys/class/gpio/gpio17/value
sudo chmod a+rw /sys/class/gpio/gpio17/direction
