#!/bin/bash

pid=$(ps -ef | grep "sinopia" |  grep -v grep | awk '{print $2}')

if [[  -n $pid  ]]; then
    kill $pid
    echo "killed sinopia"
fi

nohup ./node_modules/.bin/sinopia -c config.yaml > out.log 2>&1 &