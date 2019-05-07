#!/usr/bin/env bash

__dirname=`cd $(dirname $0); pwd -P`
echo $__dirname
cd $__dirname/dist

for i in 7001 7002 7003 7004 7005 7006
do
 echo "this is $i"
 cp -r redis $i

echo "port $i
cluster-config-file nodes.conf
daemonize yes
stop-writes-on-bgsave-error no
cluster-node-timeout 5000
appendonly yes
cluster-enabled yes" >> $i/redis.conf


done
