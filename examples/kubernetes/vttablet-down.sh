#!/bin/bash

# Copyright 2017 Google Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This is an example script that tears down the vttablet pods started by
# vttablet-up.sh.

set -e

script_root=`dirname "${BASH_SOURCE}"`
source $script_root/env.sh

#get options
for i in "$@"
do
case $i in
    -t=*|--tablets_per_shard=*)
    TABLETS_PER_SHARD="${i#*=}"
    shift # past argument=value
    ;;  
#    -r=*|--readonly_count=*)
#    RDONLY_COUNT="${i#*=}"
#    shift # past argument=value
#    ;;  
    -b=*|--uid_base=*)
    uid_base="${i#*=}"
    shift # past argument=value
    ;;  
    --default)
    DEFAULT=YES
    shift # past argument with no value
    ;;  
    *)  
          # unknown option
    ;;  
esac
done

echo "Starting port forwarding to vtctld..."
start_vtctld_forward
trap stop_vtctld_forward EXIT
VTCTLD_ADDR="localhost:$vtctld_forward_port"

# Delete the pods for all shards
#keyspace='test_keyspace'
keyspace=${KEYSPACE:-'metering_keyspace'}
echo "KEYSPACE = $keyspace"
SHARDS=${SHARDS:-'0'}
TABLETS_PER_SHARD=${TABLETS_PER_SHARD:-3}
echo "TABLETS_PER_SHARD: $TABLETS_PER_SHARD"
UID_BASE=${uid_base:-100}
echo "UID_BASE: $UID_BASE"

num_shards=`echo $SHARDS | tr "," " " | wc -w`
uid_base=$UID_BASE
cells=`echo $CELLS | tr ',' ' '`
num_cells=`echo $cells | wc -w`

for shard in `seq 1 $num_shards`; do
  [[ $num_cells -gt 1 ]] && cell_index=100000000 || cell_index=0
  for cell in $cells; do
    for uid_index in `seq 0 $(($TABLETS_PER_SHARD-1))`; do
      uid=$[$uid_base + $uid_index + $cell_index]
      printf -v alias '%s-%010d' $cell $uid

#      echo "Deleting pod for tablet $alias...vttablet-$uid"
		

			deploy=n
			read -p "Deleting pod for tablet $alias...vttablet-$uid [n]:"
			if [ -n "$REPLY" ]; then deploy="$REPLY"; fi	

			case ${deploy} in
			y | Y)
	      echo "Deleting pod for tablet $alias...vttablet-$uid"
    	  $KUBECTL $KUBECTL_OPTIONS delete pod vttablet-$uid
				;;
			*)
				echo "Skip deleting pod tablet $alias...vttablet-$uid" 
			esac
    done
    let cell_index=cell_index+100000000
  done
  let uid_base=uid_base+100
done
