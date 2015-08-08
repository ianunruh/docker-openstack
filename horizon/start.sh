#!/bin/bash
set -eux

ln -sf /etc/openstack-dashboard/local_settings.py /opt/horizon/openstack_dashboard/local/local_settings.py

/opt/horizon/manage.py compress

# http://serverfault.com/questions/599103/make-a-docker-application-write-to-stdout
ln -sf /dev/stdout /var/log/apache2/access.log
ln -sf /dev/stderr /var/log/apache2/error.log

apache2ctl -DFOREGROUND
