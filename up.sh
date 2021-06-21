#!/bin/bash

docker stack rm rabbit
#env
export EMAIL=dante5@mail.ru
export DOMAIN=65.21.50.208.nip.io
#test2.itsf.dev
#157.245.119.208.nip.io
export USERNAME=dante
export PASSWORD=PASSword
export HASHED_PASSWORD=$(openssl passwd -apr1 $PASSWORD)
export TRAEFIK_REPLICAS=$(docker node ls -q | wc -l)
docker network create -d overlay back

docker stack deploy --compose-file docker-compose.yml rabbit
#docker