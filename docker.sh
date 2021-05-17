#!/bin/sh

NAME="application-name-here"
WAIT_IN_SECONDS=20
PORT=3309
DEFAULT_PORT=3306

case $1 in

build | b)
docker build -t $NAME .
;;

run | r)
docker run --name $NAME --restart unless-stopped  -p $PORT:$DEFAULT_PORT -d $NAME
docker ps | grep $NAME
;;

exit | e)
docker stop $NAME
docker rm $NAME
;;

logs | l)
docker logs $NAME
;;

ps)
docker ps | grep $NAME
;;

full | f)
./docker.sh exit
./docker.sh build
./docker.sh run
sleep $WAIT_IN_SECONDS
./docker.sh logs
;;

*)
echo "Unknown argument! Try: build | run | exit | logs | ps | full"
;;
esac

