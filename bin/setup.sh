#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# auther:   shun kawai
# filename: setup.sh

# SHUN_SHELL_HOME="test"

if [ ${SHUN_SHELL_HOME:-} ]; then
  echo $SHUN_SHELL_HOME
  exit 0
fi

#
# 各種シェル実行用の環境変数をセットする
#
_SHUN_SHELL_HOME=$(cd $(dirname $0)"/../../" && pwd)

echo $_SHUN_SHELL_HOME
echo 'export SHUN_SHELL_HOME'
echo 'SHUN_SHELL_HOME='$_SHUN_SHELL_HOME >> $HOME/.bash_profile
echo 'export SHUN_SHELL_HOME' >> $HOME/.bash_profile
source $HOME/.bash_profile

