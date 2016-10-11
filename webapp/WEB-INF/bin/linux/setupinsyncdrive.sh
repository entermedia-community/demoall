#!/bin/bash +x
# USAGE setupinsyncdrive.sh AUTH_CODE /path/to/hotfolder
if [ "$#" -ne 3 ]; then
   echo "Illegal number of parameters, restart , Config File Required"
   exit
fi

THECONFIGDIR=$2
THEAUTHCODE=$3

HOME=/home/entermedia
export HOME
cd $HOME


#Is not running, start it
ISRUNNING=$(insync-portable get_status)
RUNNING="Start it first"
if [[ ${ISRUNNING} =~ ${RUNNING} ]];then
   echo "Starting insync"
   insync-portable start
fi
#insync-portable quit

sleep 5
insync-portable add_account -a $THEAUTHCODE $THECONFIGDIR
  
