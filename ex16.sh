#!/bin/bash

uname -a

echo ""
echo "1- nome do kernel"
echo "2- versao"
echo "3- arquitetura"
echo "4- sair"
read -p "opcao: " op

case $op in
    1) uname -s ;;
    2) uname -r ;;
    3) uname -m ;;
    4) ;;
    *) echo "opcao invalida" ;;
esac