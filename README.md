# Proxmox on EC2

Deploy Proxmox on AWS EC2 Instances e.g. Bare Metal

## Overview

The cloud-config.yml has been tested and used to deploy Proxmox VE 8 on a
c5.metal instance.

## Debian AMIs

### Debian 12 aka Bookworm

Visit the Debian wiki to get the latest Debian 12 aka Bookworm AMI ID:

- https://wiki.debian.org/Cloud/AmazonEC2Image/Bookworm

Use the awscli to retrieve the latest Debian 12 aka Bookworm AMI ID:

```shell
aws ssm get-parameter \
  --name /aws/service/debian/daily/bookworm/latest/amd64 \
  --region <region>
```

## Proxmox Resources

- https://pve.proxmox.com/wiki/Install_Proxmox_VE_on_Debian_12_Bookworm
- https://pve.proxmox.com/wiki/Network_Configuration
- https://pve.proxmox.com/wiki/Setup_Simple_Zone_With_SNAT_and_DHCP
- https://pmg.proxmox.com/pmg-docs/pmg-admin-guide.html
- https://wiki.debian.org/NetworkConfiguration
- https://wiki.debian.org/systemd
- https://fedoraproject.org/wiki/How_to_debug_Systemd_problems
- https://cloudinit.readthedocs.io/en/latest/topics/examples.html
- https://www.kernel.org/doc/html/latest/admin-guide/kernel-parameters.html

## Proxmox Extras

- https://github.com/lae/ansible-role-proxmox
- https://github.com/tteck/Proxmox
- https://tailscale.com/kb/1133/proxmox
