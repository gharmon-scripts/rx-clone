#!/bin/bash
pc_ver=pc.2020.7
ssh nutanix@$1 ". /etc/profile;
ncli cluster remove-from-name-servers servers=10.63.25.10;
ncli cluster add-to-name-servers servers=10.63.25.40"
