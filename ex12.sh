#!/bin/bash

read -p "arquivo: " arq

if [ ! -e "$arq" ]; then
    echo "arquivo nao existe"
    exit 1
fi

echo "1- 644"
echo "2- 755"
echo "3- 700"
echo "4- outra"
read -p "opcao: " op

case $op in
    1) p="644" ;;
    2) p="755" ;;
    3) p="700" ;;
    4) read -p "permissao: " p ;;
    *) echo "invalido"; exit 1 ;;
esac

chmod "$p" "$arq"
echo "permissao $p aplicada em $arq"