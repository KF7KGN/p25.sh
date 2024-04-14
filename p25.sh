#! /bin/bash

echo "Starting P25 to DMR Bridge" \ &

echo "Opening /usr/local/bin and starting P25 Reflector and Gateway." \ &

cd /usr/local/bin/ && ./P25Reflector.sh start /etc/P25Gateway.ini \ &

echo "Done" \ &

echo "Opening /etc and /Opt P25Gateway.ini" / &

cd /opt/P25Gateway && ./P25Gateway /etc/P25Gateway.ini \ &

echo "Done" \ &

echo "Starting Analog_Bridge_DMR and .ini files" \ &

cd /opt/Analog_Bridge && ./Analog_Bridge_DMR /etc/Analog_Bridge_DMR.ini \ &

echo "Done" \ &

echo "Starting /opt Analog_Bridge_P25" \ &

cd /opt/Analog_Bridge && ./Analog_Bridge_P25 /etc/Analog_Bridge_P25.ini \ &

echo "Done" \ &

echo "Stopping MMDVM_Bridge services to confirm the ports are closed!!" \ &

sudo systemctl stop mmdvm_bridge.service / &

echo "Starting MMDVM_Bridge services now...." / &

cd /opt/MMDVM_Bridge && ./MMDVM_Bridge /etc/MMDVM_Bridge.ini / &

echo "Started"
