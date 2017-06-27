#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# vi: set expandtab shiftwidth=4 :

# auther: shun kawai

#===============================
# smart-install.sh
#===============================

# err masage
function usage_exit() {
    echo 'Usage: smart-install packa-gename'
    exit 1
}
function already_installed() {
    echo $package' is already installed'
    exit 0
}

# functions
function install_Ubuntu() {
    `dpkg -l $package > /dev/null 2>&1`
    if [ $? -eq 0 ]; then
        already_installed
    fi
    sudo apt install $package -y
}
function install_CentOS() {
    echo $package
}

# main

if [ $# -ne 1 ]; then
    usage_exit
fi
package=$1

case `get-os` in
    Ubuntu)
        install_Ubuntu
    ;;
    CentOS)
        install_CentOS
    ;;
    *)
        echo 'Unknown OS'
        echo ''
        usage_exit
    ;;
esac
