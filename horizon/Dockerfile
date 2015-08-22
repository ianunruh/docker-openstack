FROM phusion/baseimage
MAINTAINER "Ian Unruh <ianunruh@gmail.com>"

ADD install.sh /install.sh
RUN /install.sh

ADD start.sh /start.sh
ADD horizon.conf /etc/apache2/sites-enabled/horizon.conf

VOLUME /etc/openstack-dashboard

EXPOSE 80

CMD /start.sh
