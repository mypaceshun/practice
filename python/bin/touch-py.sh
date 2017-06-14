#!/usr/bin/env bash

#==============
# touch-py.sh
#==============

function usage_exit() {
  echo 'Usage: touch-py newfile'
  exit 1
}

if [ $# -ne 1 ]; then
  usage_exit
fi

touch $1
cp ${SHUN_SHELL_HOME}/python/etc/template/template.py $1
