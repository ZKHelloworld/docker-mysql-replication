#!/bin/bash

docker run --name=mm \
    --mount type=bind,src=/Users/zhengkenghong/Projects/Docker/docker-mysql-replication/master/data,dst=/var/lib/mysql \
    --mount type=bind,src=/Users/zhengkenghong/Projects/Docker/docker-mysql-replication/master/my.cnf,dst=/etc/my.cnf \
    -e MYSQL_ROOT_PASSWORD=root \
    --network=mysql-cluster \
    -d mysql/mysql-server:8.0
