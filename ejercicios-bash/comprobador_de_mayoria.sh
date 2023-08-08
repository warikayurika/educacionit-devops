#!/bin/bash

#Se solicita la edad del usuario
read -p "Ingresar edad: " edad

#Comprueba si la edad ingresada es mayor o menor a 18
if (( edad <= 18 )); then
    echo -e "Tiene menos de 18, es menor de edad\n"
else
    echo -e "Tiene más de 18, es mayor de edad\n"
fi