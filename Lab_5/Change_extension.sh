#!/bin/bash

change_extension(){
    #принимаем название файла с раширение или без
    name_and_extension="$1"

    #проверка, есть ли расширение у файла. 
    if [[ "$name_and_extension" != *.* ]]
    then
        echo "Файл без расширения"
        exit 1
    fi
    #Переменная на новое расширение
    extension_new="$2"

    #Исключаю расширение по шаблону и оставляю только Имя файла
    name="${name_and_extension%.*}"
    #Исключаю все до последней точки в имени файла 
    extension="${name_and_extension##*.}"
    #конкатенация строки
    new_file="${name}.${extension_new}"
    #Результат передаю в команду в MV
    mv "$name_and_extension" "$new_file"
}

change_extension "$1" "$2"