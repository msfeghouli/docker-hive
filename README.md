# Apache Hive Docker Image

teamsprint/hive:2.3

[![DockerPulls](https://img.shields.io/docker/pulls/teamsprint/docker-hive.svg)](https://registry.hub.docker.com/u/teamsprint/docker-hive/)
[![DockerStars](https://img.shields.io/docker/stars/teamsprint/docker-hive.svg)](https://registry.hub.docker.com/u/teamsprint/docker-hive/)

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

./start-mysql.sh (optional)<br/>
./conn-mysql.sh (Optional)<br/>

./init-hive-metastore.sh
./start-hive.sh

# Run beeline to test
# !connect jdbc:hive2://localhost:10000 "" ""

