#!/bin/bash

#Menú de opciones disponibles
echo -e "\n\e[1;36m               ==== MENU ====\n"
echo -e "\e[1;33m   [1] Invertir frase"
echo -e "\e[1;32m   [2] Convertir frase con vocal en mayúscula"
echo -e "\e[1;34m   [3] Comprobador de mayoría de edad"
echo -e "\e[1;31m   [0] Salir\n"

#Se solicita que ingrese la función a ejecutar
read -p "Ingresa el número de la función que quiera utilizar: " opcion

#Válida el número ingresado y ejecuta el código correspondiente
case $opcion in
    1)
        echo -e "\e[1;33m\nEjecutando invertir frase"
        ./invertir_frase.sh
        ;;
    2)
        echo -e "\e[1;32m\nEjecutando convertir frase con vocal en mayúscula"
        ./frase_con_vocal_mayuscula.sh
        ;;
    3)
        echo -e "\e[1;34m\nEjecutando comprobador de mayoría de edad"
        ./comprobador_de_mayoria.sh
        ;;
    0)
        echo -e "\e[1;31mSaliendo del programa.\n"
        exit 0
        ;;
    *)
        echo "Opción no encontrada. Ingrese una opción válida."
        ;;
esac