#!/bin/bash

START_TIME=$(date +%s)

if [ -d "$1" ]; then

source param.sh
. echo_05.sh

END_TIME=$(date +%s)

if ! [[ $(($END_TIME-$START_TIME)) -gt 0 ]]; then difference=$((($END_TIME-$START_TIME)*(-1)))
else difference=$(($END_TIME-$START_TIME))
fi

RUNTIME=$(($difference/1000))
echo "Script execution time (in seconds) = 0.$RUNTIME"
#difference=$(( $END_TIME - $START_TIME ))
#echo "Script execution time (in seconds) = $difference"

else
    echo "Не указана директория"
fi