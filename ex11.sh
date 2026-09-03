#!/bin/bash

echo "1- listar usuarios"
echo "2- listar detalhado"
read -p "opcao: " op

if [ "$op" = "2" ]; then
    who -u -H
else
    who
fi