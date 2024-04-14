#! /bin/bash

echo "Starting Update and Upgrade with apt..." / &

sudo apt update && upgrade -y / &

wait 

sudo apt-get install build-essential -y / &
 
 wait

 sudo apt install git -y / &

 wait


sudo apt-get install net-tools -y / &

wait

sudo apt-get install wget / &

wait

sudo apt update / &

wait

mkdir Downloads / &

cd Downloads / & 

sudo git clone https://github.com/g4klx/P25Clients.git / &

wait

cd P25Clients

sudo git clone https://github.com/nostar/DVReflectors.git / &

wait

cd P25Reflector 

sudo cp P25Reflector.ini /etc / &


cd /tmp


sudo wget http://dvswitch.org/buster / &

wait

sudo chmod +x buster

sudo apt-get update —allow-releaseinfo-change / &

wait

sudo ./buster

wait

sudo apt-get update / &

wait

sudo apt-get install dvswitch-server -y / &

wait

sudo apt-get update / &

exit 0














