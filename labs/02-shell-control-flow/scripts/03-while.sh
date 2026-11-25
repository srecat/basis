#!/bin/bash
COUNT=1
echo "[WHILE] Начинаем обратный отсчет:"
while [ $COUNT -le 3 ]; do
    echo "    Итерация: $COUNT"
    ((COUNT++)) # Увеличиваем счетчик
done
