#!/bin/bash
pc_ver=pc.2020.7
ssh nutanix@$1 ". /etc/profile;
ncli software download software-type=prism_central name=pc.2020.7"
