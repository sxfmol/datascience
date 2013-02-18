#!/bin/sh
echo 'list shell file in /bin/'
set -xv
for i in /bin/*;do file $i|grep -q "shell script"&& wc -l $i|sort -t ' ' -k1; done 

