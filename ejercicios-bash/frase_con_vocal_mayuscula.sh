#!/bin/bash

#Se solicita una frase y una vocal al usuario
read -p "Ingresar frase: " frase
read -p "Ingresar vocal: " vocal

#Se imprime la frase, reemplazando la vocal por su mayuscula
echo -e "Frase con vocal en mayúscula: ${frase//"$vocal"/${vocal^^}}\n"