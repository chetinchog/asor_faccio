#!/bin/bash
source ~/.profile
umask 002

clear
echo "Cargando..."
sleep 1

clear
echo "Ingrese la ruta del directorio:"
echo ""
echo -n "> "
read directorio

echo ""
echo "Cargando directorio..."
sleep 1
echo ""
echo "--------------------------------"
ls -l $directorio
echo "--------------------------------"

echo ""
echo -n "Presione una tecla para continuar..."
read end