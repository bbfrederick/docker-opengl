#!/bin/bash

set -ex

# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=fredericklab
# image name
IMAGE=docker-opengl

# ensure we're up to date
git pull

# set the build date
build_date=`date +"%Y%m%dT%H%M%S"`
echo "build_date: $build_date"

# run build
docker buildx build . \
    --platform linux/amd64 \
    -t $IMAGE \
    --tag $USERNAME/$IMAGE:latest \
    --build-arg BUILD_DATE=$build_date \
