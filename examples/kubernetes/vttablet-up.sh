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

# This is an example script that creates a vttablet deployment.

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
# Create the pods for shard-0
#keyspace='test_keyspace'
#keyspace='metering_keyspace'
keyspace=${KEYSPACE:-'metering_keyspace'}
echo "KEYSPACE = $keyspace"
SHARDS=${SHARDS:-'0'}
TABLETS_PER_SHARD=${TABLETS_PER_SHARD:-3}
echo "TABLETS_PER_SHARD: $TABLETS_PER_SHARD"
port=15002
grpc_port=16002
UID_BASE=${uid_base:-100}
echo "UID_BASE: $UID_BASE"
VTTABLET_TEMPLATE=${VTTABLET_TEMPLATE:-'vttablet-pod-template.yaml'}
VTDATAROOT_VOLUME=${VTDATAROOT_VOLUME:-''}
#RDONLY_COUNT=${RDONLY_COUNT:-1}
#echo "RDONLY_COUNT: $RDONLY_COUNT"
vtdataroot_volume='emptyDir: {}'
if [ -n "$VTDATAROOT_VOLUME" ]; then
  vtdataroot_volume="hostPath: {path: ${VTDATAROOT_VOLUME}}"
fi

uid_base=$UID_BASE
indices=${TASKS:-`seq 0 $(($TABLETS_PER_SHARD-1))`}
cells=`echo $CELLS | tr ',' ' '`
num_cells=`echo $cells | wc -w`

for shard in $(echo $SHARDS | tr "," " "); do
  [[ $num_cells -gt 1 ]] && cell_index=100000000 || cell_index=0
  for cell in $cells; do
    echo "Creating $keyspace.shard-$shard pods in cell $cell..."
    for uid_index in $indices; do
      uid=$[$uid_base + $uid_index + $cell_index]
      printf -v alias '%s-%010d' $cell $uid
      printf -v tablet_subdir 'vt_%010d' $uid

#      echo "Creating pod for tablet $alias..."

      # Add xx to beginning or end if there is a dash.  K8s does not allow for
      # leading or trailing dashes for labels
      shard_label=`echo $shard | sed s'/[-]$/-xx/' | sed s'/^-/xx-/'`

      tablet_type=replica
#      if [ $uid_index -gt $(($TABLETS_PER_SHARD-$RDONLY_COUNT-1)) ]; then
#        tablet_type=rdonly
#      fi
			echo "$cell $uid $keyspace $shard $shard_label $port $grpc_port $tablet_subdir $vtdataroot_volume $tablet_type $backup_flags"
      # Expand template variables
      sed_script=""
      for var in vitess_image alias cell uid keyspace shard shard_label port grpc_port tablet_subdir vtdataroot_volume tablet_type backup_flags; do
        sed_script+="s,{{$var}},${!var},g;"
      done


      deploy=n
      read -p "Creating pod for tablet $alias, tablet_type $tablet_type...[n]:"
      if [ -n "$REPLY" ]; then deploy="$REPLY"; fi  

      case ${deploy} in
      y | Y)
        echo "Creating pod for tablet $alias..."
      # Instantiate template and send to kubectl.
      	cat $VTTABLET_TEMPLATE | sed -e "$sed_script" | $KUBECTL $KUBECTL_OPTIONS create -f -
        ;;  
      *)  
        echo "Skip creating pod for tablet $alias..." 
      esac
   done
    let cell_index=cell_index+100000000
  done
  let uid_base=uid_base+100
done
