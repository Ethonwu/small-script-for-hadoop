#!/bin/bash
start-dfs.sh
start-yarn.sh
mr-jobhistory-daemon.sh start historyserver
echo 'Hadoop Start Complete!!'
jps
