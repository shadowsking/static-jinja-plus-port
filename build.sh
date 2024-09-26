#!/bin/bash

DEFAULT_TAG=0.1.0

tag=${1:-$DEFAULT_TAG}

function build_tag {
    source build_tag.sh $1 $tag $2
}

build_tag ubuntu
build_tag python-slim
