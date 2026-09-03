#!/bin/bash

while true; do
    echo "--- menu ---"
    echo "1- data"
    echo "2- kernel"
    echo "3- calendario"
    echo "4- uptime"
    echo "5- usuarios"
    echo "6- processos"
    echo "7- sair"
    read -p "> " op

    case $op in
        1) date ;;
        2) uname -a ;;
        3) cal ;;
        4) uptime ;;
        5) who ;;
        6) ps aux | head -20 ;;
        7) break ;;
        *) echo "invalido" ;;
    esac
    echo ""
done