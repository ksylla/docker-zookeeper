#FROM ubuntu:trusty
#FROM ubuntu:16.04
FROM java:8

MAINTAINER Juergen Jakobitsch <jakobitschj@semantic-web.at>

RUN apt-get update && apt-get install -y vim

ADD zookeeper-3.5.2-alpha.tar.gz /usr/local/apache-zookeeper/

RUN ln -s /usr/local/apache-zookeeper/zookeeper-3.5.2-alpha /usr/local/apache-zookeeper/current

RUN rm -f /tmp/zookeeper-3.5.2-alpha.tar.gz

RUN ln -s /usr/local/apache-zookeeper/zookeeper-3.5.2-alpha /app
RUN ln -s /usr/local/apache-zookeeper/zookeeper-3.5.2-alpha/conf /config

COPY zk-config /app/bin
#COPY wait-for-step.sh /
#COPY execute-step.sh /
#COPY finish-step.sh /
