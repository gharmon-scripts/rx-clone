#!/bin/bash
ssh $1 '. /etc/profile;
acli net.create IPAM vlan=101 ip_config=10.63.21.1/24;
acli net.add_dhcp_pool IPAM start=10.63.21.51 end=10.63.21.127;
acli net.update_dhcp_dns IPAM servers=10.63.25.40 domains=dur.sre-labs.nutanix.com;'
