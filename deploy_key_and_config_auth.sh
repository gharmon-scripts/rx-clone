#!/bin/bash
scp ~/.ssh/id_rsa.pub $1:/tmp
ssh $1 '. /etc/profile; ncli cluster add-public-key name=SW-LNX-MGMT file-path=/tmp/id_rsa.pub'
ssh $1 '. /etc/profile; ncli authconfig add-directory directory-type=ACTIVE_DIRECTORY connection-type=LDAP directory-url=ldap://dur.sre-labs.nutanix.com domain=dur.sre-labs.nutanix.com name=DUR service-account-username=ntnx1@dur.sre-labs.nutanix.com service-account-password=SREs4eva!'
ssh $1 '. /etc/profile; ncli authconfig add-role-mapping name=DUR role=ROLE_USER_ADMIN entity-type=group entity-values=ntnx_grp'
