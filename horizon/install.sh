#!/bin/bash
set -eux

# Install dependencies
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential git python-dev python-pip libssl-dev libffi-dev apache2 \
    libapache2-mod-wsgi python-memcache

# Install Horizon from source
git clone --depth 1 -b stable/kilo https://github.com/openstack/horizon.git /opt/horizon
pip install /opt/horizon

# Collect static assets
/opt/horizon/manage.py collectstatic --noinput

# Disable default site
rm /etc/apache2/sites-enabled/000-default.conf

# Clean up
apt-get autoremove --purge -y build-essential git python-dev libssl-dev libffi-dev
rm -rf /var/lib/apt/lists/*
