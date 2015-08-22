#!/bin/bash
set -eux

chown -R www-data:www-data /var/lib/gnocchi

# http://serverfault.com/questions/599103/make-a-docker-application-write-to-stdout
ln -sf /dev/stdout /var/log/apache2/access.log
ln -sf /dev/stderr /var/log/apache2/error.log

apache2ctl -DFOREGROUND
