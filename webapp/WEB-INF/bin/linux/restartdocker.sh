#!/bin/bash +x
pid=`pgrep -f "entermediadb-deploy.sh"`
if [ -z "$pid" ]; then
	echo "No pid found"
else
	kill -SIGTERM $pid
	echo "Docker restarting";
fi
