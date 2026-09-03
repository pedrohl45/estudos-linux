#!/bin/bash

while true; do
    echo "--- gerenciamento de arquivos ---"
    echo "1- procurar arquivo"
    echo "2- procurar palavra"
    echo "3- renomear"
    echo "4- mover"
    echo "5- remover"
    echo "6- comparar"
    echo "7- sair"
    read -p "> " op

    case $op in
        1)
            read -p "nome: " n
            find . -name "$n" 2>/dev/null
            ;;
        2)
            read -p "palavra: " p
            read -p "arquivo: " arq
            if [ -f "$arq" ]; then
                grep -n "$p" "$arq" || echo "nao encontrada"
            else
                echo "arquivo nao existe"
            fi
            ;;
        3)
            read -p "nome atual: " a
            read -p "novo nome: " b
            if [ -e "$a" ]; then
                mv "$a" "$b"
                echo "renomeado"
            else
                echo "nao achei"
            fi
            ;;
        4)
            read -p "arquivo: " arq
            read -p "destino: " dest
            if [ -e "$arq" ]; then
                [ ! -d "$dest" ] && mkdir -p "$dest"
                mv "$arq" "$dest"
                echo "movido"
            else
                echo "nao achei"
            fi
            ;;
        5)
            read -p "arquivo: " arq
            if [ -e "$arq" ]; then
                rm "$arq"
                echo "removido"
            else
                echo "nao achei"
            fi
            ;;
        6)
            read -p "arquivo 1: " f1
            read -p "arquivo 2: " f2
            if [ -f "$f1" ] && [ -f "$f2" ]; then
                if diff -q "$f1" "$f2" > /dev/null; then
                    echo "iguais"
                else
                    diff "$f1" "$f2"
                fi
            else
                echo "algum arquivo nao existe"
            fi
            ;;
        7)
            break
            ;;
        *)
            echo "invalido"
            ;;
    esac
    echo ""
done