#!/bin/bash

echo "Escribe el nombre del directorio que quieres crear:";
read DIRECTORIO;
echo "Ahora escribe el nombre del archivo:";
read ARCHIVO;
echo "Para acabar, escribe una frase:";
read FRASE;

mkdir $DIRECTORIO;
cd $DIRECTORIO;
echo "`date` $FRASE" > $ARCHIVO;
