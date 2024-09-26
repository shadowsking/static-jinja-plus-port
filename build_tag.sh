#!/bin/bash

docker_tag=${3:-2}
url=https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/$2.tar.gz
hash=$(curl -sL $url | sha256sum | awk '{ print $1 }')

docker build . -f docker_files/$1 -t static-jinja-plus:$docker_tag --rm --build-arg TAG=$2 --build-arg HASH=$hash
