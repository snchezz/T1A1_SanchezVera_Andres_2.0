#!/bin/bash

# Empezamos con un if donde compramos que el parrámetro no este vacio
if [ "$#" -eq "0" ]; then
   echo "No has introducido ningún parámetro"
   exit 1
else
   # Si no esta vacio comprobamos si es un fichero
   if [ -f "$1" ]; then
      echo "$1 Es un fichero"
   else
      # Si no es un fichero comprobamos si es un directorio
      if [ -d "$1" ]; then
         echo "$1 Es un directorio"
      else
         # Si no es un fichero ni un directorio, damos por hecho que no existe
         echo "No existe"
      fi
   fi
   exit 0
fi