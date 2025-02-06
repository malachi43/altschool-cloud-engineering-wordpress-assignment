#!/bin/bash

set -e 

if [[ $1 == "stop" ]];then
 docker compose down --volumes
 exit 0
fi

 
 docker compose down --volumes
 docker compose -f docker-compose.yml up


