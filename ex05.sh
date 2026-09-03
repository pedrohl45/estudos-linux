#!/bin/bash

read -p "usuario: " u

if grep -q "^$u:" /etc/passwd; then
    echo "usuario existe"
else
    echo "usuario nao existe"
fi