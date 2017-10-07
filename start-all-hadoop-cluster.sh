#!/bin/bash
VBoxHeadless --startvm "hadoop-master" --vrde=off &>tmp.txt &
sleep 40
VBoxHeadless --startvm "hadoop-slave1" --vrde=off &>tmp.txt &
sleep 40
VBoxHeadless --startvm "hadoop-slave2" --vrde=off &>tmp.txt &
sleep 40
VBoxHeadless --startvm "hadoop-slave3" --vrde=off &>tmp.txt &
sleep 40
ssh es602@10.0.0.3 "nohup VBoxHeadless --startvm "hadoop-slave4" --vrde=off &>tmp.txt &"
sleep 40
ssh es602@10.0.0.3 "nohup VBoxHeadless --startvm "hadoop-slave5" --vrde=off &>tmp.txt &"
sleep 40
ssh es602@10.0.0.3 "nohup VBoxHeadless --startvm "hadoop-slave6" --vrde=off &>tmp.txt &"
sleep 40
ssh es602@10.0.0.3 "nohup VBoxHeadless --startvm "hadoop-slave7" --vrde=off &>tmp.txt &"
sleep 40
ssh hadoop@master "sh hadoop-start.sh"
ssh hadoop@master "hadoop dfsadmin -report"
