#!/bin/bash

read -p "nome do arquivo: " arq

if [ -e "$arq" ]; then
    rm "$arq"
    echo "arquivo removido"
else
    echo "arquivo nao existe"
fi