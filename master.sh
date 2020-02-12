#!/bin/bash

# Enable swarm mode and save join command
echo "[TASK 1] Creating swarm and saving join command"
docker swarm init --advertise-addr=192.168.50.10 > /dev/null 2>&1
JOIN_TOKEN=$(docker swarm join-token -q worker)
echo "docker swarm join --token $JOIN_TOKEN 192.168.50.10:2377" > /joincommand.sh

# Add vagrant user to docker group
echo "[TASK 2] Adding vagrant user to docker group"
usermod -aG docker vagrant > /dev/null 2>&1

# Install git-scm
echo "[TASK 3] Installing git scm"
yum install -q -y git > /dev/null 2>&1