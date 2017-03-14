#!/bin/bash +x
(/opt/entermediadb/tomcat/bin/shutdown.sh;/opt/entermediadb/tomcat/bin/startup.sh) &
echo "Restarted";