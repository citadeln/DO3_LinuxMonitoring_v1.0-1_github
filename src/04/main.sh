#!/bin/bash

source ./config.cfg

echo ""

if [[ $column1_background =~ ^[0-6]$ ]] && [[ $column1_font_color =~ ^[0-6]$ ]] && [[ $column2_background =~ ^[0-6]$ ]] && [[ $column2_font_color =~ ^[0-6]$ ]]; then

    if [ "$column1_background" -ne "$column1_font_color" ] && [ "$column2_background" -ne "$column2_font_color" ]; then
        . colorizer.sh
        . screen_echo.sh
        . scheme.sh
    else
        echo -n "Цвета шрифта и фона одного столбца не должны совпадать. Необходимо вызвать скрипт повторно."
    fi

else
    . colorizer.sh
    column1_background=6
    column1_font_color=1
    column2_background=2
    column2_font_color=4
    a="default (black)"
    b="default (white)"
    c="default (red)"
    d="default (blue)"

    . screen_echo.sh
    . scheme.sh
fi

echo ""