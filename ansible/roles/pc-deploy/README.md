Role Name
=========
This role will deploy Nutanix Prism Central to a Nutanix AHV Cluster

Requirements
------------
AHV Cluster needs to have access to Nutanix Support Portal for Software Downloads


Role Variables
--------------
./vars/main.yml
pc_version: <enter version>


Dependencies
------------
./templates/pc-req.j2
---
resources:
   version: {{pc_version}}
   should_auto_register: false
   pc_vm_list:
   - vm_name: PrismCentral
     container_uuid:  {{ctr_uuid}}
     num_sockets: 4
     data_disk_size_bytes: 536870912000
     memory_size_bytes: 25769803776
     dns_server_ip_list:
     - {{ansible_dns.nameservers}}
     nic_list:
     - ip_list:
       - {{pc_ip}}
       network_configuration:
         network_uuid: {{subnet_uuid}}
         subnet_mask: {{ansible_default_ipv4.netmask}}
         default_gateway: {{ansible_default_ipv4.gateway}}


Example Playbook
----------------
---
- name: Deploying Prism Central
  hosts: 
  become: no
  gather_facts: yes
  vars:
  vars_prompt:

  pre_tasks:
    - debug:
        msg: 'Staring Configuration'

  roles:
    - pc-deploy

  post_tasks:
    - debug:
        msg: 'Cluster configuration Complete'


License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
