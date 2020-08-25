#!/bin/bash
afs=3.6.5
ssh nutanix@$1 ". /etc/profile;
ncli software download software-type=files name=3.6.5"
