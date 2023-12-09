#!/bin/bash

case "$1" in
    1)  
        col_back="\033[47m"
        ;;
    2)    
        col_back="\033[41m"
        ;;
    3)
        col_back="\033[42m"
        ;;
    4)  
        col_back="\033[44m"
        ;;
    5)
        col_back="\033[45m"
        ;;
    6)
        col_back="\033[40m"
        ;;
esac

case "$2" in
    1)  
        col_t="\033[37m"
        ;;
    2)    
        col_t="\033[31m"
        ;;
    3)
        col_t="\033[32m"
        ;;
    4)  
        col_t="\033[34m"
        ;;
    5)
        col_t="\033[35m"
        ;;
    6)
        col_t="\033[30m"
        ;;
esac

case "$3" in
    1)  
        col_b_res="\033[47m"
        ;;
    2)    
        col_b_res="\033[41m"
        ;;
    3)
        col_b_res="\033[42m"
        ;;
    4)  
        col_b_res="\033[44m"
        ;;
    5)
        col_b_res="\033[45m"
        ;;
    6)
        col_b_res="\033[40m"
        ;;
esac

case "$4" in
    1)  
        col_t_res="\033[37m"
        ;;
    2)    
        col_t_res="\033[31m"
        ;;
    3)
        col_t_res="\033[32m"
        ;;
    4)  
        col_t_res="\033[34m"
        ;;
    5)
        col_t_res="\033[35m"
        ;;
    6)
        col_t_res="\033[30m"
        ;;
esac