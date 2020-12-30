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

# Verzeichnis verlässlich setzen
screen -S minecraft -X stuff $'cd /home/pi/minecraft\n'


