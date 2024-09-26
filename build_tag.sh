#!/bin/bash

docker build . -f docker_files/$1 -t static-jinja-plus:$2 --rm --build-arg TAG=$2 --build-arg HASH=$3
