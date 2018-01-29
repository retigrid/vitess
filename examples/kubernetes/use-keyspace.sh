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

# This script generates config.sh, which is a site-local config file that is not
# checked into source control.

# Custom keyspace.
keyspace=metering_keyspace
read -p "Vitess keyspace(leave empty for default) [metering_keyspace]: "
if [ -n "$REPLY" ]; then keyspace="$REPLY"; fi

config_file=`dirname "${BASH_SOURCE}"`/config.sh
if [ ! -f $config_file ]; then
  echo "Please run ./configure.sh first to generate confg file."
  exit 1
fi
custom_config_file=`dirname "${BASH_SOURCE}"`/config_${keyspace}.sh
if [ ! -f $custom_config_file ]; then
  echo "Please run ./configure.sh first to generate confg file."
  exit 1
fi

sed -i -e "s/\(^keyspace*= *\).*/\1\"$keyspace\"/" $config_file

