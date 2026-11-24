#!/bin/bash
MASS=("porsh" "bmw" "mers" "zaporozets" "LADA")
MASS[10]="Tesla"
echo "Первый элемент: ${MASS[0]}"
echo "Все элементы: ${MASS[*]}"
echo "Количество элементов: ${#MASS[@]}"
