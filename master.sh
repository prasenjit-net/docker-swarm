#!/bin/bash

# Enable swarm mode and save join command
echo "[TASK 1] Creating swarm and saving join command"
docker swarm init --advertise-addr=192.168.50.10 > /dev/null 2>&1
JOIN_TOKEN=$(docker swarm join-token -q worker)
echo "docker swarm join --token $JOIN_TOKEN 192.168.50.10:2377" > /joincommand.sh
