#!/bin/bash

/usr/bin/apt update -y
/usr/bin/apt upgrade -y
/usr/bin/apt install -y python3 python3-pip
/usr/bin/apt install -y git
/usr/bin/python3 -m pip install jq 

chmod 755 bootstrap.sh
