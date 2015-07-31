FROM phusion/baseimage
MAINTAINER "Ian Unruh <ianunruh@gmail.com>"

RUN apt-get update && \
      apt-get install -y --no-install-recommends build-essential git python-dev python-pip libssl-dev libffi-dev apache2 libapache2-mod-wsgi && \
      git clone https://github.com/openstack/horizon.git -b stable/kilo /opt/horizon && \
      pip install /opt/horizon && \
      apt-get autoremove --purge -y build-essential git python-dev libssl-dev libffi-dev && \
      rm -rf /var/lib/apt/lists/*

RUN /opt/horizon/manage.py collectstatic --noinput

RUN rm /etc/apache2/sites-enabled/000-default.conf

ADD start.sh /start.sh
ADD horizon.conf /etc/apache2/sites-enabled/horizon.conf

VOLUME /etc/openstack-dashboard

EXPOSE 80

CMD /start.sh
