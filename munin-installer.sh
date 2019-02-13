#!/bin/bash
        clear
        echo "Munin Installation wird gestartet..."
        sleep 2
        read -p"Ist ein Webserver schon installier? (j/n)?" response
if [ "$response" == "n" ]; then

        clear
        echo "Es wird nun ein Webserver (apache2) installiert"
        sleep 2
        sudo apt install apache2 -y

fi
        clear
        echo "Munin wird installiert"
        sleep 2
        sudo apt install munin munin-node
        clear
        echo "Die Datei /etc/munin/apache24.conf wird angepasst"
        sleep 2
        sudo mv apache24.conf /etc/munin/apache24.conf
        clear
        echo "Der Webserver und Munin werden neu gestartet"
        sleep 2
        sudo /etc/init.d/apache2 restart
        sudo sudo /etc/init.d/munin-node restart
        clear
        echo "Fertig, munin ist nun unter <DEINEDOMAIN>/munin/ erreichbar"
