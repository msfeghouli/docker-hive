#!/bin/bash

set -x

hdfs dfs -mkdir -p /user/hive/warehouse
mkdir -p $HIVE_HOME/hcatalog/var/log

hcat_server.sh start
hiveserver2 &

