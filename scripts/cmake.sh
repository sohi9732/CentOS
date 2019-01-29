#!/bin/sh
VER = "cmake-3.13.3"
cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.13.3/cmake-3.13.3.tar.gz

if [! -d "/home/$USER/app"]; then
	mkdir /home/$USER/app
fi
tar -zxvf $VER.tar.gz -C ~/app
cd /home/$USER/app
mv /home/$USER/app/$VER /home/$USER/app/$VER_src
mkdir $VER
cd /home/$USER/app/$VER_src
scl enable devtoolset-6 bash
./configure --prefix="/home/$USER/app/$VER"
make
make install
