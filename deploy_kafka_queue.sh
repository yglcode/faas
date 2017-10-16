#!/bin/sh

if ! [ -x "$(command -v docker)" ]; then
  echo 'Unable to find docker command, please install Docker (https://www.docker.com/) and retry' >&2
  exit 1
fi

echo "Deploying extended stack with kafka queue"
docker stack deploy func --compose-file docker-compose.kafka-queue.yml