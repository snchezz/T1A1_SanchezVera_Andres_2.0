#!/bin/bash

# Primero creamos un If para saber si se ha introducido dos parametros
if [ "$#" -lt "2" ]; then
    echo "Debes introducir al menos 2 parametros"
    exit 1
    #Si se ha introducido 2 o mas parametros, entonces se buscara si existe el archivo
else
    # Si existe se mostrara
    if [ -f $2 ]; then
        echo "El fichero $2 existe"
        cat $2
        exit 0
    else
        # Si no existe saldra un texto diciendo que no existe
        echo "El fichero $2 no existe"
        exit 2
    fi
fi
