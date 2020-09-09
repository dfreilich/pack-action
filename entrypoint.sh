#!/bin/sh

echo $HOME
ls -al $HOME/.docker
cat ~/.docker/config.json
cat /home/runner/.docker/config.json

eval "pack ${INPUT_ARGS}"