#!/bin/bash

PORT=$(nc -z 192.168.56.10 80)
FILE=$(/var/www/html/index.nginx-debian.html)

if [ -f $FILE ] && [ $PORT ];
then
        exit 0
fi