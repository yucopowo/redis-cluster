#!/bin/sh 

__dirname=`cd $(dirname $0); pwd -P`
echo $__dirname
cd $__dirname/dist

for i in 7001 7002 7003 7004 7005 7006
do
 echo "this is $i"

 ./$i/src/redis-cli -h 127.0.0.1 -p $i shutdown

done

