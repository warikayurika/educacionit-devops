#!/bin/bash

#Solicitamos al usuario que introduzca una frase
read -p "Introduce una frase: " frase

#Imprimimos con el comando 'rev' para invertir la cadena
echo -e "Frase invertida: $(echo "$frase" | rev)\n"