#!/bin/bash
echo "login:$1 pass:$2 url:$3 projName:$4"
git config --global user.name "$1"
git config --global user.password "$2"
git clone $3 

cd $4
mvn package

cd ..
mkdir app
cp /usr/init_script/$4/target/*.jar /usr/init_script/app/springProject.jar

cd app
java -jar springProject.jar
