#!/bin/bash
# sudo chmod a+x ./menu_* > tmp
export PATH=$PATH:.
umask 002

clear
echo "Cargando..."
sleep 1

while :
do
    clear
    echo "Seleccione una opcion:"
    echo "1) Ver contenido de un directorio"
    echo "2) Ver contenido de un archivo"
    echo "3) Copiar un archivo"
    echo "4) Renombrar un archivo"
    echo "0) Salir"
    echo ""
    echo -n  "> "
    read opcion
    clear
    case $opcion in
        1)
            echo "1) Ver contenido de un directorio"
        menu_lsDir.sh;;
        2)
            echo "2) Ver contenido de un archivo"
        menu_catFile.sh;;
        3)
            echo "3) Copiar un archivo"
        menu_cpFile.sh;;
        4)
            echo "4) Renombrar un archivo"
        menu_mvFile.sh;;
        0)
            echo "Saliendo..."
            sleep 1
            clear
        exit;;
        *)
            echo "Opcion invalida..."
        echo "";;
    esac
    clear
    echo "Volviendo al menu..."
    sleep 1
done

