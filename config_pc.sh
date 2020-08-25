#!/bin/bash
ssh nutanix@$1 ". /etc/profile;
cluster --cluster_function_list="multicluster" -s 10.63.19.79 create;
ncli cluster add-to-name-servers servers=10.63.25.40;
ncli user reset-password user-name=admin password=SREs4eva!"

