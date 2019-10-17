#!/bin/bash

set -x

mkdir -p $HIVE_HOME/hcatalog/var/log

hcat_server.sh stop
hcat_server.sh start

pid=`ps -ef | grep org.apache.hive.service.server.HiveServer2 | grep -v grep | awk {'print $2'}`
[ -z "$pid" ] && kill -9 $pid
hiveserver2 &

