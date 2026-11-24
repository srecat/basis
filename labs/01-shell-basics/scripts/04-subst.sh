#!/bin/bash
DATE=$(date +%Y-%m-%d)
USERS=$(who | wc -l)
echo "Текущая дата: $DATE"
echo "Пользователей в системе: $USERS"
