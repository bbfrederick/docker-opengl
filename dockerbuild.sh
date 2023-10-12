#!/bin/bash

docker build . --file Dockerfile --tag docker-opengl:$(date +%s)
