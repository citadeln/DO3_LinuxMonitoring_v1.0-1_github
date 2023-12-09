#!/bin/bash

echo -n "Would you like to save this information? (y/n) "

read item
case "$item" in
    y|Y) . screen_echo.sh > $(date +"%d_%m_%y_%H_%M_%S").status
        ;;
    *) echo "Thank you. You are cool!"
        ;;
esac