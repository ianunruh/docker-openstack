FROM ianunruh/gnocchi
MAINTAINER "Ian Unruh <ianunruh@gmail.com>"

RUN apt-get update && \
      apt-get install -y apache2 libapache2-mod-wsgi && \
      rm -rf /var/lib/apt/lists/*

ADD httpd.conf /etc/apache2/sites-available/000-default.conf

ADD start.sh /etc/service/gnocchi-api/run

EXPOSE 80
