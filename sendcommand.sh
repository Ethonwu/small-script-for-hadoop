#!/bin/bash
command=$1
for i in `seq 1  7`
do
  ssh hadoop@slave$i $command
  #echo "slave$i"
done

