#!/bin/bash

GATEWAY_HOST=myhost.com
GATEWAY_PORT=sshport
GATEWAY_USER=user
REMOTE_HOST=192.168.1.100
REMOTE_PORT=3389
#LOCAL_HOST=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}')
LOCAL_HOST=localhost
LOCAL_PORT=3390
SSH_CTRL_PATH=~/.ssh-tunnel-${GATEWAY_HOST}
ssh -L ${LOCAL_PORT}:${REMOTE_HOST}:${REMOTE_PORT} -p ${GATEWAY_PORT} ${GATEWAY$
open -W "rdp://full address:s:${LOCAL_HOST}:${LOCAL_PORT}"
ssh -S ${SSH_CTRL_PATH} -O exit ${GATEWAY_USER}@${GATEWAY_HOST}
