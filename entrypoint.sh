#!/bin/sh

echo $HOME
ls -al $HOME/.docker
cat ~/.docker/config.json
cat /var/www/.docker/config.json
cp /var/www/.docker/config.json ~/.docker/config.json
cat ~/.docker/config.json

eval "pack ${INPUT_ARGS}"