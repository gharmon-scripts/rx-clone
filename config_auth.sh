#!/bin/bash
ssh $1 '. /etc/profile; ncli authconfig add-directory directory-type=ACTIVE_DIRECTORY connection-type=LDAP directory-url=ldap://learn.local domain=learn.local name=Learn-AD service-account-username=ntnx1@learn.local service-account-password=Nutanix/4u!'
ssh $1 '. /etc/profile; ncli authconfig add-role-mapping name=Learn-AD role=ROLE_USER_ADMIN entity-type=group entity-values=ntnx_grp'
