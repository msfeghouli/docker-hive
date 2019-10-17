#!/bin/bash

IMAGE_NAME=teamsprint/hive:2.3
CONTAINER_NAME=hive

sudo docker run -d -it --name $CONTAINER_NAME -p 18088:8088 -p 18042:8042 --privileged $IMAGE_NAME /usr/sbin/init
sudo docker exec -it $CONTAINER_NAME /bin/bash

