#!/bin/bash
        clear
        echo "Munin is installed..."
        sleep 2
        clear
        read -p"A web server is needed.\n Is a web server installed? (y/n)?" response
if [ "$response" == "n" ]; then

        clear
        echo "The webserver will now installed (apache2)"
        sleep 2
        sudo apt install apache2 -y

fi
        clear
        echo "Munin is installed"
        sleep 2
        sudo apt install munin munin-node -y
        clear
        echo "Config /etc/munin/apache24.conf now"
        sleep 2
        sudo mv apache24.conf /etc/munin/apache24.conf
        clear
        echo "The webserver and munin is restart now."
        sleep 2
        sudo sudo /etc/init.d/munin-node restart
        sudo systemctl reload apache2.service
        clear
        echo "Ready, you can visit munin in <YOUR-IP>/munin/ "
