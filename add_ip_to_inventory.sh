#!/bin/bash

APP01_IP=$(terraform output -raw app01_ip)
MON01_IP=$(terraform output -raw mon01_ip)
PROM01_IP=$(terraform output -raw prom01_ip)

cat > ansible/inventory.ini <<EOF
[appservers]
app01 ansible_host=${APP01_IP}

[monservers]
mon01 ansible_host=${MON01_IP}

[prometheus]
prom01 ansible_host=${PROM01_IP}
EOF

