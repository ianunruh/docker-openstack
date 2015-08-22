FROM phusion/baseimage
MAINTAINER "Ian Unruh <ianunruh@gmail.com>"

RUN apt-get update && \
      apt-get install --no-install-recommends -y openjdk-7-jre-headless && \
      rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/zookeeper && \
      curl -L http://apache.osuosl.org/zookeeper/stable/zookeeper-3.4.6.tar.gz -o /tmp/zookeeper.tgz && \
      tar xf /tmp/zookeeper.tgz -C /opt/zookeeper --strip-components=1 && \
      rm /tmp/zookeeper.tgz

ADD start.sh /etc/service/zookeeper/run

EXPOSE 2181 2888 3888

VOLUME /opt/zookeeper/conf
VOLUME /var/lib/zookeeper
