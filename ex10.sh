#!/bin/bash

read -p "usuario: " u

linha=$(grep "^$u:" /etc/passwd)

if [ -z "$linha" ]; then
    echo "usuario nao existe"
    exit 1
fi

home=$(echo "$linha" | cut -d: -f6)
echo "usuario: $u"
echo "home: $home"

if [ -d "$home" ]; then
    echo "espaco usado: $(du -sh "$home" 2>/dev/null | cut -f1)"
else
    echo "pasta home nao encontrada"
fi