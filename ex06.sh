#!/bin/bash

read -p "palavra: " p
read -p "arquivo: " arq

if [ ! -f "$arq" ]; then
    echo "arquivo nao existe"
    exit 1
fi

if grep -q "$p" "$arq"; then
    echo "encontrei a palavra:"
    grep -n "$p" "$arq"
else
    echo "palavra nao encontrada"
fi