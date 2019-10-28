#!/bin/bash

set -x

mkdir -p $HIVE_HOME/hcatalog/var/log

hcat_server.sh start
hiveserver2 &

