#!/bin/sh


git pull
expressroute=/home/myblog/bin/www
expresspid=`ps -axu|awk '/node/{print $2}'`
if [ -z $expresspid ];
then
    nohup node $expressroute &
else
    kill $expresspid
    nohup node $expressroute &
fi

