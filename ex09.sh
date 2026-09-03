#!/bin/bash

read -p "arquivo 1: " a1
read -p "arquivo 2: " a2

if [ ! -f "$a1" ] || [ ! -f "$a2" ]; then
    echo "um dos arquivos nao existe"
    exit 1
fi

if diff -q "$a1" "$a2" > /dev/null; then
    echo "sao iguais"
else
    echo "tem diferenca:"
    diff "$a1" "$a2"
fi