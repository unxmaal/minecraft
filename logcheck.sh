#!/bin/bash
logdir=/minecraft/server/logs
month=`date +%m`

for i in `ls $logdir/server-2013-"$month"-*` ; do 
    echo $i
    zgrep ogged $i | awk {'print $4" "$2'}
    echo -e "\n"
done 

exit 0
