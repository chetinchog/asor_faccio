#!/bin/bash
#sudo chmod a+x ./spaceFS.sh
source ~/.profile
umask 002

clear
echo "Cargando..."
sleep 1

clear
echo "Listando sistemas de archivos:"
sleep 1
echo ""
df

echo ""
echo -n "Presione una tecla para continuar..."
read end