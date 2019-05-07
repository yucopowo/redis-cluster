#!/bin/sh 

basedir=`cd $(dirname $0); pwd -P`
echo $basedir

cd $basedir/7001
./src/redis-cli -h 127.0.0.1 -p 7001 shutdown

cd $basedir/7002
./src/redis-cli -h 127.0.0.1 -p 7002 shutdown

cd $basedir/7003
./src/redis-cli -h 127.0.0.1 -p 7003 shutdown

cd $basedir/7004
./src/redis-cli -h 127.0.0.1 -p 7004 shutdown

cd $basedir/7005
./src/redis-cli -h 127.0.0.1 -p 7005 shutdown

cd $basedir/7006
./src/redis-cli -h 127.0.0.1 -p 7006 shutdown


