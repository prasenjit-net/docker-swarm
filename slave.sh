#!/bin/bash

# Join worker nodes to the Kubernetes cluster
echo "[TASK 1] Join node to docker swarm"
yum install -q -y sshpass >/dev/null 2>&1
sshpass -p "kubeadmin" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no docker1:/joincommand.sh /joincommand.sh 2>/dev/null
bash /joincommand.sh >/dev/null 2>&1