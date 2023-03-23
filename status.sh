#!/bin/bash
# Controle des statuts des services
service=$1
if [ -z "$service" ]; then
echo "usage: $0 <service-name>"
exit 1
fi
echo "Contrôle du service : $service"
STATUS="$(systemctl is-active $service)"
RUNNING="$(systemctl show -p SubState $service | cut -d'=' -f2)"
if [ "${STATUS}" = "active" ]; then
echo "$service : Le service est actif"
if [ "${RUNNING}" = "running" ]; then
echo "$service : Le service est en fontion"
else
echo "$service : Le service n'est pas en fontion"
fi
else
echo "$service : Le service n'est pas actif "
exit 1
fi
