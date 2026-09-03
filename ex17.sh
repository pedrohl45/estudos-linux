#!/bin/bash

read -p "arquivo: " arq

if [ ! -f "$arq" ]; then
    echo "nao encontrei o arquivo"
    exit 1
fi

echo "linhas: $(wc -l < "$arq")"
echo "palavras: $(wc -w < "$arq")"
echo "caracteres: $(wc -m < "$arq")"