#!/bin/bash

docker run --name=ms \
    --mount type=bind,src=/Users/zhengkenghong/Projects/Docker/docker-mysql-replication/slave/my.cnf,dst=/etc/my.cnf \
    --mount type=bind,src=/Users/zhengkenghong/Projects/Docker/docker-mysql-replication/slave/data,dst=/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=root \
    --network=mysql-cluster \
    -d mysql/mysql-server:8.0
