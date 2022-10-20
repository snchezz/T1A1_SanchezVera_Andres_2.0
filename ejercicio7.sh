#!/bin/bash

# Comprobamos si se han introducido parametros
if [ "$#" -eq "0" ]; then
    # Si no se han introducido, lo avisaremos con un mensaje
    echo "No has introducido ningún parámetro"
    exit 1
else
    # Definimos la variable especial que usa la shell a modo de separador.
    IFS='-'
    # Mostramos por pantalla la lista completa de parámetros pasados al script separados por IFS.
    # Que en este caso será un guion
    echo "$*"
    exit 0
fi
