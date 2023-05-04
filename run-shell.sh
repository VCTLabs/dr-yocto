#!/bin/bash

# argument 1: Ubuntu version used as container tag
# Example:
#     ./run-shell.sh 18.04

docker run -it --rm \
  -e "USER_ID=$(id -u)" \
  -e GROUP_ID="$(id -g)" \
  -v "$HOME/.ssh:/home/embeddeduse/.ssh:rw" \
  -v "$SSH_AUTH_SOCK:/ssh.socket" \
  -e "SSH_AUTH_SOCK=/ssh.socket" \
  -v $PWD:/public/workdir dr-yocto:$1
