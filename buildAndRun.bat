@echo off
call mvn clean package
call docker build -t com.mycompany/Paarking .
call docker rm -f Paarking
call docker run -d -p 9080:9080 -p 9443:9443 --name Paarking com.mycompany/Paarking