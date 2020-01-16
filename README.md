# Hive Docker Image

teamsprint/hive:2.3

# Based on (in a row)

teamsprint/centos:7<br/>
teamsprint/jdk:8<br/>
teamsprint/hadoop:2.7.3<br/>
teamsprint/mysql:5.7<br/>

# Build the image

run build.sh

# Start a container

run run.sh

The container name is "hive". If you don't want, just edit the scripts.

# Attach a container

run attach.sh

# Destroy containers

run destroy.sh

# IMPORTANT: After attach you might to want to to:
./start-hadoop.sh (HDFS & Yarn)<br/>
./test-hadoop.sh (Optional)<br/>

./init-mysql.sh (MySQL setting)<br/>
./start-mysql.sh (Optional; already started by init-mysql.sh)<br/>
./conn-mysql.sh (Optional)<br/>
./stop-mysql.sh (Optional)<br/>

./init-hive-metastore.sh (Mandatory)<br/>
./start-hive.sh (Optional)<br/>
./conn-hive.sh (Optional)<br/>
./stop-hive.sh (Optional)<br/>

