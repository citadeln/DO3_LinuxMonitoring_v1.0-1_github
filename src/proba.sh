
mmm=`pwd`
echo $mmm

#echo -en `\n`


user=monroebu
if 
cd /home/$user
then 
echo "good"
elif ls /home
then
echo "The user doesn’t exist but anyway there is a directory under /home"
fi

val1=text
val2="another text"
16K     /home/monroebu/DO3_LinuxMonitoring_v1.0-1/src/05
fi











if [[ -n "$s" ]]; then
  echo "Введенный параметр: $s"
elif [[ $s =~ ^[0-9]+$ ]]; then
  echo "Ошибка: введено число, ожидался текст"
else
  echo "Ошибка: не указан параметр"
fi



case "$1" in
    1)  
        col_back="\033[47m"
        col_t="\033[37m"
        col_b_res="\033[47m"
        col_t_res="\033[37m"
        ;;
    2)    
        col_back="\033[41m"
        col_t="\033[31m"
        col_b_res="\033[41m"
        col_t_res="\033[31m"
        ;;
    3)
        col_back="\033[42m"
        col_t="\033[32m"
        col_b_res="\033[42m"
        col_t_res="\033[32m"
        ;;
    4)  
        col_back="\033[44m"
        col_t="\033[34m"
        col_b_res="\033[44m"
        col_t_res="\033[34m"
        ;;
    5)
        col_back="\033[45m"
        col_t="\033[35m"
        col_b_res="\033[45m"
        col_t_res="\033[35m"
        ;;
    6)
        col_back="\033[40m"
        col_t="\033[30m"
        col_b_res="\033[40m"
        col_t_res="\033[30m"
        ;;
    *) echo "Некорректный ввод"
        ;;
esac