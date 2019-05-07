#!/bin/sh 

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
