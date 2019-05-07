#!/bin/sh 

__dirname=`cd $(dirname $0); pwd -P`
echo $__dirname
cd $__dirname/dist

for i in 7001 7002 7003 7004 7005 7006
do
 echo "this is $i"
 cd $__dirname/dist/7001

 echo "port $i
    cluster-config-file nodes.conf
    daemonize yes
    cluster-node-timeout 5000
    appendonly yes
    cluster-enabled yes" >> $i/redis.conf


done




basedir=`cd $(dirname $0); pwd -P`
echo $basedir

cd $basedir/7001
rm appendonly.aof
rm dump.rdb
rm nodes.conf

cd $basedir/7002
rm appendonly.aof
rm dump.rdb
rm nodes.conf

cd $basedir/7003
rm appendonly.aof
rm dump.rdb
rm nodes.conf

cd $basedir/7004
rm appendonly.aof
rm dump.rdb
rm nodes.conf

cd $basedir/7005
rm appendonly.aof
rm dump.rdb
rm nodes.conf

cd $basedir/7006
rm appendonly.aof
rm dump.rdb
rm nodes.conf
