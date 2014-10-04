FROM sionsmith/tomcat-7

MAINTAINER Sion Smith sion.smith@gmail.com

RUN apt-get -qq update

#install maven and git to build project
RUN apt-get install -y wget git-core

# Pull project
RUN git clone git@github.com:sionsmith/spring-petclinic.git /home/spring-petclinic

# Build project
RUN cd /home/spring-petclinic &amp;&amp; mvn package

# make directories
RUN mkdir /logs