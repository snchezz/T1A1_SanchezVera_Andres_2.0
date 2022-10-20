#!/bin/bash

if [ "$#" -ge "2" ]; then
  if [ "$#" -lt "10" ]; then
    echo "Has introducido menos de 10 parametros, por lo que no se mostrara nada"
    exit 0
  else
    # Con $ y un numero imprimimos el valor del decimo parametro
    echo "$10"
    exit 0
  fi
else
  # Se muestra una advertencia de que debe de haber al menos 2 parametros
  echo "Se deben introducir al menos 2 parametros"
  exit 1
fi
