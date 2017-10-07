#!/bin/bash
for i in `seq 1 7`
do
 scp $1 hadoop@slave$i:$2
done
