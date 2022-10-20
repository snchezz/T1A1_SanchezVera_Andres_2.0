#!/bin/bash

# Comprobamos si se han introducido minimo 2 parametros
if [ "$#" -ge "2" ]; then
    # Si se han introducido, se comprobara:
    if [ -d "$1" ]; then
        # Si el directorio existe, si existe, no se creara otro igual
        echo "El directorio ${1} existe"
        # Comprobamos que el archivo exista, si existe se copiara, si no se mostrara un mensaje de error
        if [ -f $2 ]; then
            echo "El fichero $2 existe"
            cp $2 $1/
        else
            echo "El fichero $2 no existe, por lo tanto no se puede mover, porfavor, comprueba el nombre del fichero"
            exit 2
        fi
        echo ""
        # Nos metemos en el directorio que hemos creado
        echo "Nos trasladamos al directorio $1"
        cd $1
        echo ""
        # Mostramos que el achivo se ha copiado correctamente
        echo "Mostramos el contenido del directorio: $1"
        ls
        exit 0
    else
        echo "El directorio ${1} no existe"
        # Si el directorio no existe, creamos el directorio con el nombre del primer parametro
        mkdir $1
        echo "Se ha creado un directorio llamado $1"
        # Comprobamos que el archivo exista, si existe se copiara, si no se mostrara un mensaje de error
        if [ -f $2 ]; then
            echo "El fichero $2 existe"
            cp $2 $1/
        else
            echo "El fichero $2 no existe, por lo tanto no se pyede mover, porfavor, comprueba el nombre del fichero"
            exit 2
        fi
        echo ""
        # Nos metemos en el directorio que hemos creado
        echo "Nos trasladamos al directorio $1"
        cd $1
        echo ""
        # Mostramos que el achivo se ha copiado correctamente
        echo "Mostramos el contenido del directorio: $1"
        ls
        exit 0
    fi
else
    # Si no se han introducido, lo avisaremos con un mensaje
    echo "Se deben introducir mínimo 2 parametros."
    exit 1
fi
