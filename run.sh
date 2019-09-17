#!/bin/bash

CONTAINER_NAME=hive

docker run -d -it --name $CONTAINER_NAME -p 18088:8088 -p 18042:8042 --privileged teamsprint/hive:2.3 /usr/sbin/init
docker exec -it $CONTAINER_NAME /bin/bash

