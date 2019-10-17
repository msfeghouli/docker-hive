#!/bin/bash

set -x

PASSWORD=Metatron123$

expect -c "
set timeout 3
spawn mysql -uroot -p
expect \"Enter password:\"
send \"$PASSWORD\\r\"
expect \"mysql>\"
send \"create database hive_metastore;\\r\"
expect \"mysql>\"
send \"create user 'hive'@'%' identified by '$PASSWORD';\\r\"
expect \"mysql>\"
send \"grant all privileges on *.* to 'hive'@'%';\\r\"
expect \"mysql>\"
send \"grant all privileges on hive_metastore.* to 'hive'@'%';\\r\"
expect \"mysql>\"
send \"create user 'hive'@'localhost' identified by '$PASSWORD';\\r\"
expect \"mysql>\"
send \"grant all privileges on *.* to 'hive'@'localhost';\\r\"
expect \"mysql>\"
send \"grant all privileges on hive_metastore.* to 'hive'@'localhost';\\r\"
expect \"mysql>\"
send \"flush privileges;\\r\"
expect \"mysql>\"
send \"quit\\r\"
expect eof
"

schematool -initSchema -dbType mysql

