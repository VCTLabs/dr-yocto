#!/bin/bash

# argument 1: Ubuntu version used as container tag
# Example:
#     ./run-shell.sh 18.04

docker run -it --rm \
  -e SSH_AUTH_SOCK=/tmp/ssh_auth.sock \
  -v $SSH_AUTH_SOCK:/tmp/ssh_auth.sock \
  -v $PWD:/public/workdir dr-yocto:$1
