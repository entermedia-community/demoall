#!/bin/bash +x
. "/opt/entermediadb/tomcat/bin/setenv.sh"
(sleep 2 && opt/entermediadb/tomcat/bin/catalina.sh stop && /opt/entermediadb/tomcat/bin/catalina.sh start) &
echo "Restarting...";
