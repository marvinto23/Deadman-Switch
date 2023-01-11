#!/bin/bash

# Installing dependencies
apt-get update
apt-get install -y python3 python3-pip
pip3 install flask

# Creating the working directory
mkdir -p /var/www/deadman_switch

# Copying the front-end, back-end and config files
cp frontend.html /var/www/deadman_switch/
cp backend.py /var/www/deadman_switch/
cp config.json /var/www/deadman_switch/

# Starting the back-end server
cd /var/www/deadman_switch
python3 backend.py &

# Starting the front-end server
python3 -m http.server 80 &
