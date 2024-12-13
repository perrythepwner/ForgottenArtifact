#!/bin/bash

########### ENV VARS ###########
NAME=forgottenartifact
IMAGE=blockchain_${NAME}
FLAG=HTB{y0u_c4n7_533_m3}
PUBLIC_IP=127.0.0.1
HANDLER_PORT=8000
LOCAL_RPC_PORT=5000
LOCAL_RPC_URL=http://localhost:${LOCAL_RPC_PORT}/
################################

docker rm -f $IMAGE
docker build --tag=$IMAGE:latest ./challenge/ && \
docker run --rm -it \
    -p "$LOCAL_RPC_PORT:$LOCAL_RPC_PORT" \
    -p "$HANDLER_PORT:$HANDLER_PORT" \
    --name $IMAGE \
    $IMAGE:latest
