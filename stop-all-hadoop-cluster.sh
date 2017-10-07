#!/bin/bash
VBoxManage controlvm "hadoop-master" poweroff
VBoxManage controlvm "hadoop-slave1" poweroff
VBoxManage controlvm "hadoop-slave2" poweroff
VBoxManage controlvm "hadoop-slave3" poweroff
ssh es602@10.0.0.3 "VBoxManage controlvm "hadoop-slave4" poweroff"
ssh es602@10.0.0.3 "VBoxManage controlvm "hadoop-slave5" poweroff"
ssh es602@10.0.0.3 "VBoxManage controlvm "hadoop-slave6" poweroff"
ssh es602@10.0.0.3 "VBoxManage controlvm "hadoop-slave7" poweroff"
