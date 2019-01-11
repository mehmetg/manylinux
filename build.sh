#!/bin/bash

# Stop at any error, show all commands
set -ex

docker/build_scripts/prefetch.sh openssl curl
docker build --rm -t artifactory.main.voleon.net:9000/wheelbuild:centos6 -f docker/Dockerfile-$PLATFORM docker/
# docker system prune -f
