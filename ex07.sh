#!/bin/bash

echo "1- find"
echo "2- whereis"
echo "3- locate"
read -p "opcao: " op

case $op in
    1)
        read -p "nome do arquivo: " n
        find . -name "$n" 2>/dev/null
        ;;
    2)
        read -p "comando: " c
        whereis "$c"
        ;;
    3)
        read -p "arquivo: " a
        locate "$a" 2>/dev/null
        ;;
    *)
        echo "invalido"
        ;;
esac