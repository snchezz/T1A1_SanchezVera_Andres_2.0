#!/bin/bash

# Primero creamos un If para saber si se ha introducido un parametro
if [ "$#" -eq "0" ]; then
   #Si no se ha introducido, mostraremos un mensaje y se acabara el Script
   echo "No has introducido ningún parámetro"
   exit 1
# Si existe, buscaremos si hay ficheros y directorios
else
   if [ -f $1 ]; then
      echo "El fichero $1 existe"
   else
      echo "El fichero $1 no existe"
   fi
   if [ -d "$1" ]; then
      echo "El directorio ${1} existe" 
   else  
      echo "El directorio ${1} no existe" 
   fi
   exit 0
fi
