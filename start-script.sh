#!/bin/bash

###
# This script creates the needed permissions and dirs
###


mkdir ./jenkins_home
sudo chown 1000:1000 -R /jenkins_home
docker-compose up -d
