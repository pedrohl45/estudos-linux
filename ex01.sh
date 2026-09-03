#!/bin/bash

read -p "primeiro numero: " n1
read -p "segundo numero: " n2

echo "1- soma"
echo "2- subtracao"
echo "3- multiplicacao"
echo "4- divisao"
echo "5- sair"
read -p "opcao: " op

case $op in
    1)
        echo "resultado: $(expr $n1 + $n2)"
        ;;
    2)
        echo "resultado: $(expr $n1 - $n2)"
        ;;
    3)
        echo "resultado: $(expr $n1 \* $n2)"
        ;;
    4)
        if [ "$n2" = "0" ]; then
            echo "nao da pra dividir por zero"
        else
            echo "resultado: $(echo "scale=2; $n1 / $n2" | bc)"
        fi
        ;;
    5)
        echo "saindo"
        ;;
    *)
        echo "opcao invalida"
        ;;
esac