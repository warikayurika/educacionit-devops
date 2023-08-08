#!/bin/bash

#Se setea una variable de escape para el bucle while
salir=0

#Menú de opciones disponibles
function mostrar_menu() {
    echo -e "\n\e[1;36m               ==== MENU ====\n"
    echo -e "\e[1;33m   [1] Invertir frase"
    echo -e "\e[1;32m   [2] Convertir frase con vocal en mayúscula"
    echo -e "\e[1;34m   [3] Comprobador de mayoría de edad"
    echo -e "\e[1;31m   [0] Salir \n"
}

function consultar_salida() {
    read -p "Quiere volver al menu?  [1]Sí - [2]No : " valor
    if (( valor == 1 )); then
        salir=0
    else
        salir=1
    fi
}


while (( salir == 0 )); do

    #Mostramos menu
    mostrar_menu

    #Se solicita que ingrese la función a ejecutar
    read -p "Ingresa el número de la función que quiera utilizar: " opcion

    #Válida el número ingresado y ejecuta el código correspondiente
    case $opcion in
        1)
            echo -e "\e[1;33m\nEjecutando invertir frase"

            #Solicitamos al usuario que introduzca una frase
            read -p "Introduce una frase: " frase

            #Imprimimos con el comando 'rev' para invertir la cadena
            echo -e "Frase invertida: $(echo "$frase" | rev)\n"
            
            consultar_salida
            ;;
        2)
            echo -e "\e[1;32m\nEjecutando convertir frase con vocal en mayúscula"

            #Se solicita una frase y una vocal al usuario
            read -p "Ingresar frase: " frase
            read -p "Ingresar vocal: " vocal

            #Se imprime la frase, reemplazando la vocal por su mayuscula
            echo -e "Frase con vocal en mayúscula: ${frase//"$vocal"/${vocal^^}}\n"
            
            consultar_salida
            ;;
        3)
            echo -e "\e[1;34m\nEjecutando comprobador de mayoría de edad"

            #Se solicita la edad del usuario
            read -p "Ingresar edad: " edad

            #Comprueba si la edad ingresada es mayor o menor a 18
            if (( edad <= 18 )); then
                echo -e "Tiene menos de 18, es menor de edad\n"
            else
                echo -e "Tiene más de 18, es mayor de edad\n"
            fi
            
            consultar_salida
            ;;
        0)
            echo -e "\e[1;31mSaliendo del programa.\n"
            salir=1
            exit 0
            ;;
        *)
            echo "Opción no encontrada. Ingrese una opción válida."
            ;;
    esac
done