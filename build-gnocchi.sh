#!/bin/bash
echo "This will take a long time"

set -eux

docker build -t ianunruh/gnocchi gnocchi
docker build -t ianunruh/gnocchi-api gnocchi-api
docker build -t ianunruh/gnocchi-metridcd gnocchi-metricd

docker push ianunruh/gnocchi:latest
docker push ianunruh/gnocchi-api:latest
docker push ianunruh/gnocchi-metridcd:latest
