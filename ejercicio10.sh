#!/bin/bash

# Comprobamos si se han introducido parametros
if [ "$#" -eq "0" ]; then
    # Si no se han introducido, lo avisaremos con un mensaje
    echo "No has introducido ningún parámetro"
    exit 1
else
    if [ -d "$1" ]; then
        echo "El directorio ${1} existe, por lo tanto no se va a crear"
        echo "Mostramos el contenido de la carpeta para ver que el directorio $1 se ha creado"
        ls
        echo ""
        echo "Entramos en el directorio $1"
        cd $1
        echo ""
        echo "Mostramos la ruta ya dentro del directorio"
        pwd
        exit 2
    else
        echo "El directorio ${1} no existe"
        # Creamos un directorio con el primer parametro introducido
        echo "Se ha creado un directorio con el nombre: $1"
        mkdir $1
        echo ""
        echo "Mostramos el contenido de la carpeta para ver que el directorio $1 se ha creado"
        ls
        echo ""
        echo "Entramos en el directorio $1"
        cd $1
        echo ""
        echo "Mostramos la ruta ya dentro del directorio"
        pwd
        exit 0 
    fi
fi
