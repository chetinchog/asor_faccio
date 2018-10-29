#!/bin/bash
#sudo chmod a+x ./userLogin.sh
source ~/.profile
umask 002

clear
echo "Cargando..."
sleep 1

while :
do
    clear
    echo "Ingrese nombre de usuario (presione ENTER para terminar):"
    echo ""
    echo -n "> "
    read usuario
    if [ "$usuario" == "" ]; then
        break;
    else
        echo ""
        echo "Listando ingresos para $usuario..."
        sleep 1
        who | grep $usuario >/tmp/0
        logued=$(echo $?)
        echo ""
        if [ "$logued" == "0" ]; then
            echo "$usuario está logueado!"
        else
            echo "$usuario no está logueado."
        fi
        echo ""
        echo "--------------------------------------------------------------"
        echo "Usuario  Terminal     Fecha-Hora"
        echo "--------------------------------------------------------------"
        last -a | grep $usuario | head
        echo "--------------------------------------------------------------"
        
        echo ""
        echo -n "Presione una tecla para continuar..."
        echo ""
        read end
    fi
done
clear