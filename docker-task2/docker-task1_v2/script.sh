#!/bin/bash
echo "login:$1 pass:$2 url:$3 projName:$4"
ls
git config --global user.name "$1"
git config --global user.password "$2"

cd ../..
git clone $3 

cd $4
mvn package
