#!/bin/bash


read -p "Введите исходную строку: " input_str
read -p "Введите начальную позицию символа: " start_position
read -p "Введите конечную позицию символа: " end_position

echo "Выберите операцию:"
echo "1 - Выделить подстроку"
echo "2 - Удалить подстроку"

# Принимаем выбранную пользователем операцию
read -p "Введите номер операции: " operation


change_string(){
    # Принимаем исходную строку в качестве первого аргумента
    input_str="$1"

    # Принимаем начальную позицию в качестве второго аргумента
    start_position="$2"

    # Принимаем конечную позицию в качестве третьего аргумента
    end_position="$3"

    # Принимаем операцию в качестве четвёртого аргумента
    operation="$4"


    # Проверяем, выбрал ли пользователь выделение подстроки
    if [[ "$operation" == "1" ]]
    then
        # С помощью cut выделяем символы от начальной до конечной позиции. Через | передаю строку комануде cup
        result=$(echo "$input_str" | cut -c "$start_position-$end_position")
        echo "Выделенная подстрока: $result"
    fi


    # Проверяем, выбрал ли пользователь удаление подстроки
    if [[ "$operation" == "2" ]]
    then
        # Получаем часть строки до удаляемой позиции
        left_part=$(echo "$input_str" | cut -c "1-$((start_position - 1))")

        # Получаем часть строки после удаляемой позиции
        right_part=$(echo "$input_str" | cut -c "$((end_position + 1))-")

        # Объединяем левую и правую части в строку
        result="${left_part}${right_part}"

        echo "Строка после удаления: $result"
    fi
}


change_string "$input_str" "$start_position" "$end_position" "$operation"