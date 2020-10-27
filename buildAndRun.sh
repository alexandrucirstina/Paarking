#!/bin/sh
mvn clean package && docker build -t com.mycompany/Paarking .
docker rm -f Paarking || true && docker run -d -p 9080:9080 -p 9443:9443 --name Paarking com.mycompany/Paarking