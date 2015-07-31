#!/bin/bash
ln -s /etc/openstack-dashboard/local_settings.py /opt/horizon/openstack_dashboard/local/local_settings.py

/opt/horizon/manage.py compress

apache2ctl -DFOREGROUND
