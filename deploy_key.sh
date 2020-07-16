#!/bin/bash
scp ~/.ssh/id_rsa.pub $1:/tmp
ssh $1 '. /etc/profile; ncli cluster add-public-key name=SW-LNX-MGMT file-path=/tmp/id_rsa.pub'
