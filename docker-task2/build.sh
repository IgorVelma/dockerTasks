#!/bin/bash

FILE=/$4/pom.xml
    if test -f "$FILE"; then
	echo "$FILE exists. Clean up and pull from git"
	rm -r /$4
        sh script.sh $1 $2 $3 $4
	cp /$4/target/*.war /tmp/app.war
    else
	echo "$FILE not exists. Pull from git"
        sh script.sh $1 $2 $3 $4
	cp /$4/target/*.war /tmp/app.war
    fi
