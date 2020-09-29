Role Name
=========
This role will register Prism Element to Prism Central
- Change the default password
- Register to Prism Central

Requirements
------------
Successful Deployment of Prism Central

Role Variables
--------------

Dependencies
------------


Example Playbook
----------------
---
- name: Deploying Prism Central
  hosts: 
  become: no
  gather_facts: yes
  vars:
  vars_prompt:
    - name: pc_ip
      prompt: Please Enter Prism Central IP Address
      private: no
    - name: pc_pwd
      prompt: Please Enter Prism Central Password
  pre_tasks:
    - debug:
        msg: 'Staring Configuration'

  roles:
    - pc-register

  post_tasks:
    - debug:
        msg: 'Cluster configuration Complete'


License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
