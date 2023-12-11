#!/bin/bash

echo "Total number of folders (including all nested ones) =" $(find $filic -type d | wc -l)

IFS=""

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
du -sh $filic* | sort -rh | head -n 5

echo "Total number of files =" $(ls -laR $filic | grep "^-" | wc | awk '{print $1}')

echo "Number of:  
Configuration files (with the .conf extension) =" $(ls -laR $filic | grep ".conf$" | wc | awk '{print $1}')
echo "Text files =" $(ls -laR $filic | grep ".txt$" | wc -l)
echo "Executable files =" $(find $filic -executable | wc -l)
echo "Log files (with the extension .log) =" $(ls -laR $filic | grep ".log$" | wc -l)
echo "Archive files =" $(ls -laR $filic | grep ".zip$\|.gz$" | wc -l)
echo "Symbolic links =" $(ls -laR $filic | grep "^l" | wc -l)
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
#find "$filic" -type f -exec du -h {} + | sort -rh | head -n 10 | awk -v filic="$filic" '{cmd = "ls | egrep -o \".\\w*$\" | tr -d \".\""; cmd | getline fileType; close(cmd); printf "%d - %s, %s, %s\n", NR, $2, $1, fileType}'
find "$filic" -type f -exec du -h {} + | sort -rh | head -n 10 | awk '{cmd = "find \"" $2 "\" | grep -o \".\\w*$\" | tr -d \".\""; cmd | getline fileType; close(cmd); printf "%d - %s, %s, %s\n", NR, $2, $1, fileType}'
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
#find $filic -type f -executable -exec ls -lh {} \; | sort -k5 -hr | head -n 10 | awk '{cmd="md5sum"; cmd | getline md5; close(cmd); printf "%d - %s, %s, %s\n", NR, $9, $5, md5}'

find $filic -type f -executable -exec du -h {} \; | sort -rh | head -n 10 | awk '{cmd="md5sum "; cmd | getline md5; close(cmd); printf "%d - %s, %s, %s\n", NR, $2, $1, md5}'