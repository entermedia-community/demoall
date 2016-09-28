#!/bin/bash +x
# USAGE setupresiliodrive.sh SECRET /path/to/hotfolder
if [ "$#" -ne 2 ]; then
   echo "Illegal number of parameters, restart , Config File Required"
   exit
fi
THECONFIG=$2

killall rslsync

rslsync --config "$THECONFIG"
