#!/bin/bash


source .env

if [ $GEM_MIRROR ]; then
    docker build --build-arg GEM_MIRROR=$GEM_MIRROR --build-arg TZ=$TZ -t myjekyll .
else
    echo "You haven't set GEM_MIRROR. Use: export GEM_MIRROR='...'"
fi
