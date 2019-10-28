#!/bin/bash

set -x

hcat_server.sh stop

pid=`ps -ef | grep org.apache.hive.service.server.HiveServer2 | grep -v grep | awk {'print $2'}`
[ -z "$pid" ] && kill -9 $pid

