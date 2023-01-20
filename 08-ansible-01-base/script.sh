# /usr/bin/env bash

cd docker
docker compose up -d
docker ps
cd ../playbook
ansible-playbook site.yml -i 'inventory/prod.yml' --vault-password-file 'pass'
docker stop $(docker ps -q)
echo $'\n'"It's all"