#!/bin/bash

read -p "arquivo: " arq
read -p "destino: " dest

if [ ! -e "$arq" ]; then
    echo "arquivo nao encontrado"
    exit 1
fi

# cria o diretorio se nao existir
if [ ! -d "$dest" ]; then
    mkdir -p "$dest"
fi

mv "$arq" "$dest"
echo "movido para $dest"