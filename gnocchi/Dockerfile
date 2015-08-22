FROM phusion/baseimage
MAINTAINER "Ian Unruh <ianunruh@gmail.com>"

ADD install.sh /install.sh
RUN /install.sh

VOLUME /etc/gnocchi
VOLUME /var/lib/gnocchi

CMD my_init
