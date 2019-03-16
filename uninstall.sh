#!/usr/bin/env bash

if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    read -p "This script will uninstall the TCNJ Linux VPN. Continue? (y/n) " -n 1 -r
    echo
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if [[ $(id -u) -eq 0 ]]; then
            cd /usr/bin
            sudo rm -rf openconnect
            sudo rm -f tcnj-vpn
        
            echo "The TCNJ Linux VPN has been successfully uninstalled."
        else
            echo "Please run this script with sudo or as root."
            exit 1
        fi
    fi
else
    echo "This script is not intended for your operating system."
    exit 1
fi
