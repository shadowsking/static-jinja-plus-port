#!/bin/bash

function push_tag {
    docker tag static-jinja-plus:$1 shadowsking/static-jinja-plus:$1
    docker push shadowsking/static-jinja-plus:$1
}

if [ $# -eq 0 ]; then
    echo "Please write a tag"
    exit 1
fi

push_tag $1
push_tag $1-slim
push_tag develop
push_tag develop-slim

push_tag latest
push_tag slim
