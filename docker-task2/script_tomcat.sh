#!/usr/bin/env bash
echo "STARTED"

chmod +x /opt/tomcat/bin/catalina.sh
sh /opt/tomcat/bin/catalina.sh run

echo "END"

