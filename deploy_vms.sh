#!/bin/bash
ssh $1 '. /etc/profile; acli vm.create Win_base num_cores_per_vcpu=1 num_vcpus=2 memory=4G; acli vm.nic_create Win_base network=DHCP; acli vm.disk_create Win_base cdrom=true empty=true; acli vm.disk_create Win_base clone_from_image=Win-base'
ssh $1 '. /etc/profile; acli vm.create Lnx_base num_cores_per_vcpu=1 num_vcpus=2 memory=4G; acli vm.nic_create Lnx_base network=DHCP; acli vm.disk_create Win_base cdrom=true empty=true; acli vm.disk_create Lnx_base clone_from_image=Lnx-base'

