#!/bin/sh 

basedir=`cd $(dirname $0); pwd -P`
echo $basedir

if [ ! -d "./dist" ];then
    #rm -f ./dist
    mkdir ./dist
else
    echo "dist文件已存在"
fi

cd $basedir/dist

if [ ! -f "./dist/redis-stable.tar.gz" ];then
    #wget http://download.redis.io/releases/redis-5.0.4.tar.gz
    wget http://download.redis.io/redis-stable.tar.gz
    tar xzf redis-stable.tar.gz
    mv redis-stable redis
fi

cd redis

make

