#!/usr/bin/env bash

pveam update
#pveam available
pveam download local ubuntu-24.04-standard_24.04-2_amd64.tar.zst

#pct create 999 local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst

# Create new container named test with the ID 100
pct create 100 /var/lib/vz/template/cache/ubuntu-24.04-standard_24.04-2_amd64.tar.zst \
  -arch amd64 \
  -ostype ubuntu \
  -hostname test \
  -cores 2 \
  -memory 2048 \
  -swap 0 \
  -storage local \
  -net0 name=eth0,bridge=vmbr0,ip=dhcp,type=veth

pct exec 100 -- /bin/bash
