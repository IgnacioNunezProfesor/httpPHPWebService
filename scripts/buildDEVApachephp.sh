#!/bin/sh
docker-compose --env-file ./env/.dev.env -f ./docker/docker-compose.apachephp.build.dev.yml up --build -d apachephp