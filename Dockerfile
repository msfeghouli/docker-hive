FROM teamsprint/mysql:5.7

MAINTAINER Jooho Kim

USER root

RUN wget --secure-protocol=auto https://www-eu.apache.org/dist/hive/hive-2.3.6/apache-hive-2.3.6-bin.tar.gz
RUN tar -zxvf apache-hive-2.3.6-bin.tar.gz -C /opt
RUN rm -f apache-hive-2.3.6-bin.tar.gz
RUN ln -s /opt/apache-hive-2.3.6-bin /opt/hive

ENV HIVE_HOME /opt/hive
ENV PATH $PATH:$HIVE_HOME/bin:$HIVE_HOME/hcatalog/sbin

RUN wget http://www.java2s.com/Code/JarDownload/mysql/mysql-connector-java-commercial-5.1.7-bin.jar.zip
RUN unzip mysql-connector-java-commercial-5.1.7-bin.jar.zip
RUN mv mysql-connector-java-commercial-5.1.7-bin.jar  $HIVE_HOME/lib/
RUN rm -f mysql-connector-java-commercial-5.1.7-bin.jar.zip

ADD conf/hive-site.xml $HIVE_HOME/conf

ADD script/init-hive-metastore.sh /
ADD script/start-hive.sh /
ADD script/conn-hive.sh /
ADD script/stop-hive.sh /
  
ADD Dockerfile /
Add README.md /

RUN hdfs dfs -mkdir -p /user/hive/warehouse

CMD ["/bin/bash"]

# Hive server2 port
EXPOSE 10000

