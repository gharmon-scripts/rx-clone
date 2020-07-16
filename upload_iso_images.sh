#!/bin/bash
ssh $1 '. /etc/profile; acli image.create Windows2K12 container=Images image_type=kIsoImage source_url=http://dur-file.sre-labs.nutanix.com/Repo/Mounts/OS/Microsoft/server/2012/en_windows_server_2012_r2_vl_with_update_x64_dvd_6052766.iso'
ssh $1 '. /etc/profile;acli image.create CentOS container=Images image_type=kIsoImage source_url=http://dur-file.sre-labs.nutanix.com/Repo/Mounts/OS/Linux/CentOS-7-x86_64-DVD-1708.iso'
ssh $1 '. /etc/profile;acli image.create Windows2K16 container=Images image_type=kIsoImage source_url=http://dur-file.sre-labs.nutanix.com/Repo/Mounts/OS/Microsoft/server/2016/en_windows_server_2016_updated_feb_2018_x64_dvd_11636692.iso'
ssh $1 '. /etc/profile;acli image.create Windows2K19 container=Images image_type=kIsoImage source_url=http://dur-file.sre-labs.nutanix.com/Repo/Mounts/OS/Microsoft/server/2019/SW_DVD9_Win_Server_STD_CORE_2019_1809.1_64Bit_English_DC_STD_MLF_X22-02970.iso'
