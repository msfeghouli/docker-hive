FROM teamsprint/hadoop:2.7.3

MAINTAINER Jooho Kim

USER root
  
CMD ["/bin/bash"]

# Hive server2 port
EXPOSE 10000

