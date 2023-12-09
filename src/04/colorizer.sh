#!/bin/bash

case "$column1_background" in
    1)  
        col_back="\033[47m"
        a="1 (white)"
        ;;
    2)    
        col_back="\033[41m"
        a="2 (red)"
        ;;
    3)
        col_back="\033[42m"
        a="3 (green)"
        ;;
    4)  
        col_back="\033[44m"
        a="4 (blue)"
        ;;
    5)
        col_back="\033[45m"
        a="5 (purple)"
        ;; 
    6)
        col_back="\033[40m"
        a="6 (black)"
        ;;
esac

case "$column1_font_color" in
    1)  
        col_t="\033[37m"
        b="1 (white)"
        ;;
    2)    
        col_t="\033[31m"
        b="2 (red)"
        ;;
    3)
        col_t="\033[32m"
        b="3 (green)"
        ;;
    4)  
        col_t="\033[34m"
        b="4 (blue)"
        ;;
    5)
        col_t="\033[35m"
        b="5 (purple)"
        ;;
    6)
        col_t="\033[30m"
        b="6 (black)"
        ;;
esac


case "$column2_background" in
    1)  
        col_b_res="\033[47m"
        c="1 (white)"
        ;;
    2)    
        col_b_res="\033[41m"
        c="2 (red)"
        ;;
    3)
        col_b_res="\033[42m"
        c="3 (green)"
        ;;
    4)  
        col_b_res="\033[44m"
        c="4 (blue)"
        ;;
    5)
        col_b_res="\033[45m"
        c="5 (purple)"
        ;;
    6)
        col_b_res="\033[40m"
        c="6 (black)"
        ;;
esac

case "$column2_font_color" in
    1)  
        col_t_res="\033[37m"
        d="1 (white)"
        ;;
    2)    
        col_t_res="\033[31m"
        d="2 (red)"
        ;;
    3)
        col_t_res="\033[32m"
        d="3 (green)"
        ;;
    4)  
        col_t_res="\033[34m"
        d="4 (blue)"
        ;;
    5)
        col_t_res="\033[35m"
        d="5 (purple)"
        ;;
    6)
        col_t_res="\033[30m"
        d="6 (black)"
        ;;
esac