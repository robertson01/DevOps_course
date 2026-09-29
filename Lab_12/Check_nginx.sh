#!/bin/bash
check_status=$(systemctl status nginx | awk '/Active:/ {print $2}')
if [ "$check_status" != "active" ]; then
    echo "nginx не активен, рестарт службы"
    sudo systemctl restart nginx
else
    echo "Служба nginx работает"
fi