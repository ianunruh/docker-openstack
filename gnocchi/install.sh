#!/bin/bash
set -eux

# Install dependencies
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential git python-dev python-pip libssl-dev libffi-dev \
    libmysqlclient-dev libpq-dev

# Install Gnocchi
git clone --depth 1 -b stable/1.1 https://github.com/openstack/gnocchi.git /opt/gnocchi
pip install -U /opt/gnocchi
pip install -U keystonemiddleware redis kazoo MySQL-Python

# Clean up
apt-get autoremove --purge -y build-essential git python-dev libssl-dev libffi-dev
rm -rf /var/lib/apt/lists/*
