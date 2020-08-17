#!/bin/bash
ssh $1 '. /etc/profile; acli net.create MGMT vlan=0;
acli net.create DHCP vlan=102;
acli net.create STATIC vlan=103;'

## If IPAM is needed ###
# acli net.create IPAM vlan=101 ip_config=10.63.21.0/24;
# acli net.add_dhcp_pool IPAM start=10.63.21.51 end=10.63.21.127;
# acli net.update_dhcp_dns IPAM servers=10.63.25.40 domains=dur.sre-labs.nutanix.com;'
