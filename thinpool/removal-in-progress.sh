#!/bin/bash

#It can happen that containers will keep te state "Removal In Progress".
#In this case it can be that another container is keeping it in use.
#To find this container the below command can be used to find out which one.

#Below command gives the real ID of the containers
$ docker inspect $(docker ps -a |grep "Removal In Progress" | grep "$1" | awk '{print $1}') | grep '"Id":' | awk '{print $2}'

#Replace guiddevice with the id of the container(s) from above statement"
$ find /proc/*/mounts | xargs grep guiddevice 2>/dev/null | cut -d/ -f3 | xargs -L 1 ps -q | awk '{ print $4 }' | grep -v CMD

 
 