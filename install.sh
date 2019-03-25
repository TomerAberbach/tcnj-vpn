#!/usr/bin/env bash

if [[ "$(uname)" == "Darwin" ]]; then
    echo "This script is not intended for your operating system."
    echo "Mac VPN Tutorial: http://nts.pages.tcnj.edu/files/2014/08/PAN-VPN-Instructions.pdf"
    exit 1
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    if [[ $(id -u) -eq 0 ]]; then
        if [[ -d "/usr/bin/openconnect" ]]; then
            echo "It appears that the TCNJ Linux VPN is already installed."
            echo "To reinstall run the uninstall script and then run this script again."
            exit 1
        else
            read -p "This script will install the TCNJ Linux VPN. Continue? (y/n) " -n 1 -r
            echo
            echo

            if [[ $REPLY =~ ^[Yy]$ ]]; then
                read -p "Username: " -r username
                read -p "You entered '$username' for your username. Is this correct? (y/n) " -n 1 -r
                echo
                
                while [[ $REPLY =~ ^[^Yy]$ ]]; do
                    read -p "Username: " -r username
                    read -p "You entered '$username' for your username. Is this correct? (y/n) " -n 1 -r
                    echo
                done
                echo
                
                if [[ -z $(apt-cache search --names-only '^libgnutls-dev$') ]]; then
                    libgnutls='libgnutls28-dev'
                else
                    libgnutls='libgnutls-dev'    
                fi
                
                sudo apt-get install git build-essential gettext autoconf automake libproxy-dev libxml2-dev libtool vpnc-scripts pkg-config $libgnutls

                cd /usr/bin
                git clone https://github.com/dlenski/openconnect.git
                cd openconnect
                git checkout globalprotect
                ./autogen.sh
                ./configure
                make
                sudo make install && sudo ldconfig

                cd /usr/bin
                echo -e "#!/bin/bash\nsudo /usr/bin/openconnect/openconnect --protocol=gp vpn-gw-ft.tcnj.edu --quiet --user=$username" > tcnj-vpn
                chmod +x tcnj-vpn
                    
                echo "The TCNJ Linux VPN has been successfully installed."
                echo "To connect to the VPN simply run 'tcnj-vpn' from any directory and enter your password when prompted."
                echo "You may ignore any output unrelated to incorrect credentials."
                echo "Note that you will be unable to work from the terminal window where you ran the command so simply open another terminal window if you wish to continue working. Alternatively you could run the command in the background."
                echo "To disconnect simply open the terminal window where you ran the 'tcnj-vpn' command and press 'CTRL+C'."
            fi
        fi
    else
        echo "Please run this script with sudo or as root."
        exit 1
    fi
else
    echo "This script is not intended for your operating system."
    echo "Windows VPN Tutorial: http://nts.pages.tcnj.edu/files/2014/08/PAN-VPN-Instructions.pdf"
    exit 1
fi

