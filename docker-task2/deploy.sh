#!/bin/bash

cp /tmp/app.war /opt/tomcat/webapps/
FILE=/opt/tomcat/webapps/app.war
if test -f "$FILE"; then
    echo "$FILE exists. Start deploy"
    chmod +x /opt/tomcat/bin/catalina.sh
    sh /opt/tomcat/bin/catalina.sh run
    curl http://192.168.99.100:8080/app/
else 
    echo "$FILE not exists"
fi	
