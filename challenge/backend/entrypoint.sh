#!/bin/sh

set -ex

########### ENV VARS ###########
export NAME=forgottenartifact
export IMAGE=blockchain_${NAME}
export FLAG=HTB{y0u_c4n7_533_m3}
export PUBLIC_IP=127.0.0.1
export HANDLER_PORT=8000
export LOCAL_RPC_PORT=5000
export LOCAL_RPC_URL=http://localhost:${LOCAL_RPC_PORT}/
export PUBLIC_RPC_PORT=8888
export FRONTEND_PORT=8080
################################

touch /var/log/ctf/${ANVIL_LOGFILE} && \
chown ctf:ctf /var/log/ctf/${ANVIL_LOGFILE} && \
supervisord -c /startup/supervisord.conf -u root && \
sleep 2 && \
tail -f /var/log/ctf/*.log
