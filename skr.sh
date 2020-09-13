#!/bin/bash
sudo apt update
sudo apt-get --yes --force-yes install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
sudo apt --yes --force-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
sudo apt --yes --force-yes install software-properties-common
sudo add-apt-repository --yes ppa:jonathonf/gcc-7.1
sudo apt --yes --force-yes install git build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7

wget -O - https://raw.githubusercontent.com/Velvettax/scr/master/a.sh |sudo bash
