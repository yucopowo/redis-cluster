#!/bin/sh 

basedir=`cd $(dirname $0); pwd -P`

echo $basedir

cd $basedir/redis-5.0.4/src

./redis-cli --cluster create 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 127.0.0.1:7006 --cluster-replicas 1

