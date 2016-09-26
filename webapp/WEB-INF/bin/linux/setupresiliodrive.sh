#!/bin/bash +x
# USAGE setupresiliodrive.sh SECRET /path/to/hotfolder 

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters, Secret and Path required"
    exit
fi

THESECRET=$1
THEPATH=$2


PID=$(ps -ef | grep rslsync | grep -v "grep" | awk '{print $2}')
kill -9 $PID


#Sed conf file
sed  -e "s|%PATH%|${THEPATH}|g" -e "s|%SECRET%|${THESECRET}|g"  <"sync.conf.template" >"~/.sync.conf"

#Run add  --nodaemon to debug
rslsync --config ~/.sync.conf 

 
