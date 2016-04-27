#!/bin/sh


git pull
route = /home/myblog/bin/www
express_pid=`ps -axu|grep node|grep $route|awk 'print{$2}'`
kill $express_pid
nohup node $route &
