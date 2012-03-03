#!/usr/bin/env bash

MODULES="gitflow git-extras"

if [ -f .gitmodules ]
then
    git submodule init && git submodule update
    for module in $MODULES; do
        cd $module
        if [ -f .gitmodules ]
        then
            git submodule init && git submodule update
        fi
        cd ..
    done
fi

