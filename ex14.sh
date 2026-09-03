#!/bin/bash

read -p "nome do processo: " n

r=$(ps aux | grep -i "$n" | grep -v grep | grep -v "$0")

if [ -n "$r" ]; then
    echo "$r"
else
    echo "processo nao encontrado"
fi