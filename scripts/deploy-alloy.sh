#!/usr/bin/env bash

for host in pve-2l sr4l-pve sr6l-pve
do
    scp alloy/proxmox/config.alloy $host:/etc/alloy/config.alloy
    ssh $host systemctl restart alloy
done