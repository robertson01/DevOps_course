В домашней директории создать home_works создать директорию lesson_10

![Скриншот](<images/Screenshot From 2026-09-28 10-47-12.png>)

В директории lesson_10 создать директорию available, в ней файлы app.conf, readme.md, app.log с произвольным содержимым

![Скриншот](<images/Screenshot From 2026-09-28 10-47-55.png>)

В директории lesson_10 создать директорию enabled, в ней создать symlink на available/app.conf

![Скриншот](<images/Screenshot From 2026-09-28 11-42-05.png>)

В директории lesson_10 создать директории logs и debug; переместить файл available/app.log в директорию logs, а в debug сделать hardlink на logs/app.log

![Скриншот](<images/Screenshot From 2026-09-28 11-57-31.png>)

![Скриншот](<images/Screenshot From 2026-09-28 11-58-02.png>)

Добавить к вашей ВМ дополнительный диск.

Посмотреть список блочных устройств (lsblk) и список смонтированных ФС (df -Th)

![Скриншот](<images/Screenshot From 2026-09-28 12-16-08.png>)

Создать на новом диске ФС типа ext4

![Скриншот](<images/Screenshot From 2026-09-28 12-24-21.png>)

Создать директорию /opt/application и смонтировать в нее новый диск (монтирование должно быть постоянным, через /etc/fstab)

![Скриншот](<images/Screenshot From 2026-09-28 12-51-27.png>)

Скопировать /opt/application все содержимое lesson_10.

![Скриншот](<images/Screenshot From 2026-09-28 12-59-04.png>)

![Скриншот](<images/Screenshot From 2026-09-28 12-59-30.png>)

Попробовать сделать hardlink на файл $HOME/home_works/lesson_10/available/readme.md в директории /opt/application (не получится); затем сделать symlink на этот же файл

![Скриншот](<images/Screenshot From 2026-09-28 13-04-33.png>)