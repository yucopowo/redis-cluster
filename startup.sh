#!/bin/sh 

basedir=`cd $(dirname $0); pwd -P`
echo $basedir

cd $basedir/7001
./src/redis-server ./redis.conf

cd $basedir/7002
./src/redis-server ./redis.conf

cd $basedir/7003
./src/redis-server ./redis.conf

cd $basedir/7004
./src/redis-server ./redis.conf

cd $basedir/7005
./src/redis-server ./redis.conf

cd $basedir/7006
./src/redis-server ./redis.conf

