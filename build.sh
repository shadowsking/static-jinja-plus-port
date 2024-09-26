#!/bin/bash

tag=$1

function build_tag {
    source build_tag.sh $1 $tag $2
}

if [ $# -eq 0 ]; then
    echo "Please write a tag"
    exit 1
fi

build_tag ubuntu
build_tag python-slim $tag-slim
build_tag develop develop
build_tag develop-slim develop-slim

build_tag ubuntu latest
build_tag python-slim slim
