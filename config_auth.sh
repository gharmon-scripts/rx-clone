#!/bin/bash
ssh $1 '. /etc/profile; ncli authconfig add-directory directory-type=ACTIVE_DIRECTORY connection-type=LDAP directory-url=ldap://dur.sre-labs.nutanix.com domain=dur.sre-labs.nutanix.com name=Dur service-account-username=ntnx1@dur.sre-labs.nutanix.com service-account-password=SREs4eva!'
ssh $1 '. /etc/profile; ncli authconfig add-role-mapping name=Dur role=ROLE_USER_ADMIN entity-type=group entity-values=ntnx_grp'
