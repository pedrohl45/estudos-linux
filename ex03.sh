#!/bin/bash

read -p "nome atual: " a
read -p "novo nome: " b

if [ -e "$a" ]; then
    mv "$a" "$b"
    echo "ok, renomeado"
else
    echo "nao achei o arquivo $a"
fi