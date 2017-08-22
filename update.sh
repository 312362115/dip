#!/bin/sh 


cd  "$(dirname "$0")"


# curl ip.cip.cc > ip.txt
dig +short myip.opendns.com @resolver1.opendns.com > ip.txt


if [ -z "$(git st --porcelain)"]; then
    exit
fi


time=`date "+%F %T"`

git add .
git commit -m "update at ${time}" 

git push origin master
