#!/bin/bash

clear
while :
do
  echo -n `date +"%Y/%m/%d %H:%M:%S,"` && \
  echo    `curl -LI $1 -o /dev/null -w '%{http_code},%{time_total}\n' -s` ;
  sleep 1 ;
done
