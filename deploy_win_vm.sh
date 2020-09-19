#!/bin/bash
ssh $1 '. /etc/profile; acli vm.create Win_VM_Core num_cores_per_vcpu=1 num_vcpus=2 memory=4G; acli vm.nic_create Win_VM_Core network=DHCP; acli vm.disk_create Win_VM_Core cdrom=true empty=true; acli vm.disk_create Win_VM_Core cdrom=true empty=true;acli vm.disk_create Win_VM_Core create_size=40G container=ctr1'

ssh $1 '. /etc/profile; acli vm.create Win_VM_GUI num_cores_per_vcpu=1 num_vcpus=2 memory=4G; acli vm.nic_create Win_VM_GUI network=DHCP; acli vm.disk_create Win_VM_GUI cdrom=true empty=true; acli vm.disk_create Win_VM_GUI create_size=40G container=ctr1;acli vm.disk_create Win_VM_GUI cdrom=true empty=true;'
