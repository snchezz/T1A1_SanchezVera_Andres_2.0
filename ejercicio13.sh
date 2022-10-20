#!/bin/bash

# Creamos un if si no hay parametros introducidos muestra un texto y termina
if [ "$#" -eq "0" ]; then
  echo "No has introducido ningún parámetro"
  exit 1
else
  # Si hay parametros, se mostrara el numero y cuales son
  echo "Han habido $# parametros"
  echo "Estos son los parametros introducidos: $*"
  exit 0
fi
