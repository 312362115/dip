#!/bin/sh 


curl cip.cc | awk -F : 'NR==1{print $2}' > ip.txt


time=`date "+%F %T"`


git add .
git ci -m "update at ${time}" 

git push origin master