FROM teamsprint/mysql:5.7

MAINTAINER Jooho Kim

USER root

RUN wget --secure-protocol=auto https://www-eu.apache.org/dist/hive/hive-2.3.6/apache-hive-2.3.6-bin.tar.gz
RUN tar -zxvf apache-hive-2.3.6-bin.tar.gz -C /opt
RUN rm -f apache-hive-2.3.6-bin.tar.gz
RUN ln -s /opt/apache-hive-2.3.6-bin /opt/hive

ENV HIVE_HOME /opt/hive
ENV PATH $PATH:$HIVE_HOME/bin:$HIVE_HOME/hcatalog/sbin

ADD hive-site.xml $HIVE_HOME/conf
ADD init-db.sh /
  
CMD ["/bin/bash"]

# Hive server2 port
EXPOSE 10000

