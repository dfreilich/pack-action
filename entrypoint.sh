#!/bin/sh

if [ -n "${INPUT_USERNAME}" ] && [ -n "${INPUT_PASSWORD}" ]; then
  echo "${INPUT_PASSWORD}" | docker login -u "${INPUT_USERNAME}" --password-stdin "${INPUT_REGISTRY}"
fi
eval "pack ${INPUT_ARGS}"
