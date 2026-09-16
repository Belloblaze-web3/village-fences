#!/usr/bin/env bash

read -r n
read -r village

if [[ "$village" == *HH* ]]; then
    printf 'NO\n'
    exit 0
fi

solution=${village//./B}
printf 'YES\n'
printf '%s\n' "$solution"
