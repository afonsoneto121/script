#!/bin/bash
sudo apt-get install git
sudo apt-get install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev

git clone https://github.com/OhGodAPet/cpuminer-multi.git

cd cpuminer-multi/
chmod +x autogen.sh
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo make install

screen ./minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u afonsoneto121@gmail.com -p x
