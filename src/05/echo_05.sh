#!/bin/bash

echo "Total number of folders (including all nested ones) =" $(find $filic -type d | wc -l)

IFS=""

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
du -sh $filic* | sort -rh | head -n 5

echo "Total number of files =" $(ls -laR $filic | grep "^-" | wc | awk '{print $1}')

echo "Number of:  
Configuration files (with the .conf extension) =" $(ls -laR $filic | grep ".conf$" | wc | awk '{print $1}')
echo "Text files =" $(ls -laR $filic | grep ".txt$" | wc -l)
echo "Executable files =" $(ls -laR $filic | grep ".exe$" | wc -l)
echo "Log files (with the extension .log) =" $(ls -laR $filic | grep ".log$" | wc -l)
echo "Archive files =" $(ls -laR $filic | grep ".zip$\|.gz$" | wc -l)
echo "Symbolic links =" $(ls -laR $filic | grep "^l" | wc -l)
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
du -ah $filic | sort -rh | head -n 3


#1 - /var/log/one/one.exe, 10 GB, exe  
#2 - /var/log/two/two.log, 10 MB, log  
#etc up to 10"
# echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)  
# 1 - /var/log/one/one.exe, 10 GB, 3abb17b66815bc7946cefe727737d295  
# 2 - /var/log/two/two.exe, 9 MB, 53c8fdfcbb60cf8e1a1ee90601cc8fe2  
# etc up to 10"
# echo "Script execution time (in seconds) = 1.5"