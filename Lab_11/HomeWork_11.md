Запустить на ВМ как systemd сервис приложение на python
```ini
[Unit]
Description=Python application
After=network-online.target

[Service]
User=webuser
Group=webuser
WorkingDirectory=/var/www/python_app
ExecStart=/var/www/python_app/venv/bin/python /var/www/python_app/app2.py
Restart=always

[Install]
WantedBy=multi-user.target
```
![Скриншот](<images/Screenshot From 2026-09-28 15-47-42.png>)

Запустить на ВМ как systemd сервис приложение
```ini
[Unit]
Description=Demo app
After=network-online.target

[Service]
User=webuser
Group=webuser
WorkingDirectory=/var/www/demo_app
Environment="APP_NAME=demo_app"
ExecStart=/var/www/demo_app/venv/bin/gunicorn app:app
Restart=always

[Install]
WantedBy=multi-user.target
```
![Скриншот](<images//Screenshot From 2026-09-28 16-22-31.png>)
