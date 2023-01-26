#!/bin/bash

docker compose -p solar_infra down
curl https://raw.githubusercontent.com/mospolytech-solar-regatta/solar-ansible/main/devenv/docker-compose.yaml > docker-compose.yaml
docker compose -p solar_infra up -d