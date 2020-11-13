#!/bin/bash

# Build base image and install dependencies
docker build -f ops/Dockerfile --tag ruby_base:latest .


# Build app container
docker build -f Dockerfile --tag monkstagram:latest .
