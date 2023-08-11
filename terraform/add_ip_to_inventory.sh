#!/bin/bash

APP01_IP=$(terraform output -raw app01_ip)
MON01_IP=$(terraform output -raw mon01_ip)
PROM01_IP=$(terraform output -raw prom01_ip)

cat > ../ansible/inventory.ini <<EOF
[all:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=/Users/maksimyarhunin/Downloads/main.pem
app01_ip=${APP01_IP}
mon01_ip=${MON01_IP}
prom01_ip=${PROM01_IP}

[appservers]
app01 ansible_host=${APP01_IP}

[monservers]
mon01 ansible_host=${MON01_IP}

[prometheus]
prom01 ansible_host=${PROM01_IP}
EOF

