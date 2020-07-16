#!/bin/bash
ssh $1 '. /etc/profile; ncli ctr create name=ctr1 sp-id=`ncli sp ls | grep Id | grep -v Disk | cut -f 4 -d :`'
ssh $1 '. /etc/profile; ncli ctr create name=ctr2 sp-id=`ncli sp ls | grep Id | grep -v Disk | cut -f 4 -d :`'
ssh $1 '. /etc/profile; ncli ctr create name=ctr3 sp-id=`ncli sp ls | grep Id | grep -v Disk | cut -f 4 -d :`'
ssh $1 '. /etc/profile; ncli ctr create name=Images sp-id=`ncli sp ls | grep Id | grep -v Disk | cut -f 4 -d :`'
