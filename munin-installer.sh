#!/bin/bash
        clear
        echo "Munin Installation wird gestartet..."
        sleep 2
        clear
        read -p"Is a web server already installed? (y/n)?" response
if [ "$response" == "n" ]; then

        clear
        echo "The webserver will now installed (apache2)"
        sleep 2
        sudo apt install apache2 -y

fi
        clear
        echo "Munin is installed"
        sleep 2
        sudo apt install munin munin-node
        clear
        echo "Die Datei /etc/munin/apache24.conf wird angepasst"
        sleep 2
        sudo mv apache24.conf /etc/munin/apache24.conf
        clear
        echo "The webserver and munin is restart now."
        sleep 2
        sudo /etc/init.d/apache2 restart
        sudo sudo /etc/init.d/munin-node restart
        clear
        echo "Ready, you can visit munin in <YOUR-IP>/munin/ "
