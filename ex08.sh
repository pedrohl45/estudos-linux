#!/bin/bash

read -p "arquivo 1: " a1
read -p "arquivo 2: " a2
read -p "arquivo de saida: " saida

if [ ! -f "$a1" ] || [ ! -f "$a2" ]; then
    echo "algum arquivo nao existe"
    exit 1
fi

echo "1- sobrescrever"
echo "2- adicionar no final"
read -p "modo: " m

if [ "$m" = "2" ]; then
    cat "$a1" "$a2" >> "$saida"
else
    cat "$a1" "$a2" > "$saida"
fi

echo "feito, arquivo salvo em $saida"