#!/bin/bash

cd brew_setup
output=$(bash brew_installation.sh)

if [ $? == 0 ]; then
    echo pass
else
    echo fail
    exit 1
fi