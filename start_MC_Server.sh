#!/usr/bin/env bash

# Script wird aufgerufen mit folgenden Argumenten
# - Ordner für Welten
# - Name der Welt
# Beispiel:
# /bin/bash/ start_MC_Server.sh 'all_worlds' 'new_world'
#
# all_worlds landet dann in $1
# new_world landet in $2

# Screen starten
screen -d -m -S minecraft

# Verzeichnis setzen
screen -S minecraft -X stuff $'cd /home/pi/minecraft\n'

# Minecraft-Server starten
screen -S minecraft -X stuff $'java -Xms1G -Xmx2G -XX:+UseG1GC -jar spigot-1.16.4.jar --world-dir $1/ --level-name $2 nogui\n'


