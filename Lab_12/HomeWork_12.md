Написать скрипт, который запрашивает имя пользователя и выводит персонализированное приветствие

```bash
#!/bin/bash
read -p "Введите имя пользователя:" name
echo "Привествую вас, $name"
```

![Скриншот](<images/Screenshot From 2026-09-29 12-11-14.png>)

Установить nginx (sudo apt install -y nginx) и написать скрипт для мониторинга состояния демона nginx (systemctl status) с и автоматическим перезапуском (systemctl restart), если он не запущен

```bash
#!/bin/bash
check_status=$(systemctl status nginx | awk '/Active:/ {print $2}')
if [ "$check_status" != "active" ]; then
    echo "nginx не активен, рестарт службы"
    sudo systemctl restart nginx
else
    echo "Служба nginx работает"
fi
```

![Скриншот](<images/Screenshot From 2026-09-29 12-59-31.png>)

Написать скрипт для мониторинга доступности хоста (можно использовать ping) с записью результата в лог с датой и временем (формат произвольный).
```bash
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
```

![Скриншот](<images/Screenshot From 2026-09-29 14-02-43.png>)