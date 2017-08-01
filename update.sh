#!/bin/sh 


cd  "$(dirname "$0")"


curl cip.cc | awk -F : 'NR==1{print $2}' > ip.txt


if [ -z "$(git st --porcelain)"]; then
	exit
fi


time=`date "+%F %T"`


git add .
git ci -m "update at ${time}" 

git push origin master