#!/bin/bash

/usr/bin/apt update -y
/usr/bin/apt upgrade -y
/usr/bin/apt install -y python3 python3-pip
/usr/bin/apt install -y git
/usr/bin/apt pip3 install boto3

chmod 755 bootstrap.sh
