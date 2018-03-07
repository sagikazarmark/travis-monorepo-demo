#!/bin/bash

if [[ -z $0 ]]; then
    echo "Commit range cannot be empty"
    exit 1
fi

if [[ -z $1 ]]; then
    echo "Change path cannot be empty"
    exit 1
fi

git diff --name-only $0 | sort -u | uniq | grep $1
