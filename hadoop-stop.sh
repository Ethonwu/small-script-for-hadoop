#!/bin/bash
stop-dfs.sh
stop-yarn.sh
mr-jobhistory-daemon.sh stop historyserver
echo 'Hadoop Stop Complete!!!'
jps

