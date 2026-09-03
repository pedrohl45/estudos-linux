#!/bin/bash

read -p "PID: " pid

if ! ps -p "$pid" > /dev/null 2>&1; then
    echo "PID nao existe"
    exit 1
fi

read -p "tem certeza que quer matar o processo $pid? (s/n): " resp

if [ "$resp" = "s" ] || [ "$resp" = "S" ]; then
    kill "$pid"
    echo "processo $pid encerrado"
else
    echo "cancelado"
fi