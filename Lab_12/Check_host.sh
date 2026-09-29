#!/bin/bash
read -p "Укажите IP адрес хоста: " host

if [ -z "$host" ]; then
    echo "Ошибка: IP-адрес не может быть пустым!"
    exit 1
fi

time=$(date "+%d.%m.%Y %T")

if ping -c 2 "$host" >> ping.log; then
    echo "[$time] $host Хост доступен" >> ping.log
else
    echo "[$time] $host Хост НЕ доступен" >> ping.log
fi