#!/bin/bash

DIR="$1"
EXT="$2"

if [ ! -d "$DIR" ]; then
    echo "Ошибка: каталог '$DIR' не существует."
    exit 1
fi

count=$(find "$DIR" -maxdepth 1 -type f -name "*$EXT" | wc -l)

echo "Количество файлов с расширением $EXT в директории $DIR: $count"
