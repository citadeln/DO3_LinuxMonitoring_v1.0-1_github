#!/bin/bash

echo -e "$col_back$col_t""HOSTNAME""\033[0m"="$col_b_res""$col_t_res""$HOSTNAME""\033[0m"

#временная зона в виде: America/New_York UTC -5 (временная зона, должна браться из системы и быть корректной для текущего местоположения)
TIMEZONE=$(timedatectl | awk '/Time zone/{print $3}')
UTC=$(timedatectl | awk '/Time zone/{print substr($5,1,5)}')
echo -e "$col_back$col_t""TIMEZONE""\033[0m"="$col_b_res""$col_t_res""$TIMEZONE UTC $UTC""\033[0m"

echo -e "$col_back$col_t""USER""\033[0m"="$col_b_res""$col_t_res""$USER""\033[0m"

#тип и версия операционной системы
VERSION=$(cat /etc/os-release | awk -F \" '/VERSION=/{print $2}')
echo -e "$col_back$col_t""OS""\033[0m"="$col_b_res""$col_t_res""$OSTYPE, $VERSION""\033[0m"

echo -e "$col_back$col_t""DATE""\033[0m"="$col_b_res""$col_t_res""$(date +'%d %b %Y %T')""\033[0m"

#время работы системы
UPTIME=$(uptime -p | sed 's/up //')
echo -e "$col_back$col_t""UPTIME""\033[0m"="$col_b_res""$col_t_res""$UPTIME""\033[0m"
UPTIME_SEC=$(cat /proc/uptime | awk '{print$1}')
echo -e "$col_back$col_t""UPTIME_SEC""\033[0m"="$col_b_res""$col_t_res""$UPTIME_SEC""\033[0m"

# ip-адрес машины в любом из сетевых интерфейсов
IP=$(hostname -I)
echo -e "$col_back$col_t""IP""\033[0m"="$col_b_res""$col_t_res""$IP""\033[0m"

# сетевая маска любого из сетевых интерфейсов в виде: xxx.xxx.xxx.xxx
MASK=$(ifconfig | awk '/netmask / && !mask {print substr($4,1,15); mask=1}')
echo -e "$col_back$col_t""MASK""\033[0m"="$col_b_res""$col_t_res""$MASK""\033[0m"

# GATEWAY = ip шлюза по умолчанию
GATEWAY=$(ip route | awk '/default/{print $3}')
echo -e "$col_back$col_t""GATEWAY""\033[0m"="$col_b_res""$col_t_res""$GATEWAY""\033[0m"

# размер оперативной памяти в Гб c точностью три знака после запятой в виде: 3.125 GB
echo -e "$col_back$col_t""RAM_TOTAL""\033[0m"="$col_b_res""$col_t_res"$(free | awk '/Mem/{printf("%.3f", $2 /(1024*1024))}') "GB""\033[0m"
#!/bin/bash*1024))}')  "Gb"

# размер свободной памяти в Гб c точностью три знака после запятой
echo -e "$col_back$col_t""RAM_FREE""\033[0m"="$col_b_res""$col_t_res"$(free | awk '/Mem/{printf("%.3f", $4/(1024*1024))}') "Gb""\033[0m"

# SPACE_ROOT = размер рутового раздела в Mб с точностью два знака после запятой в виде: 254.25 MB
echo -e "$col_back$col_t""SPACE_ROOT""\033[0m"="$col_b_res""$col_t_res"$(df | awk '/dev/ && !space {printf("%.2f", $2/1024); space=1}') "Mb""\033[0m"

# SPACE_ROOT_USED = размер занятого пространства рутового раздела в Mб с точностью два знака после запятой
echo -e "$col_back$col_t""SPACE_ROOT_USED""\033[0m"="$col_b_res""$col_t_res"$(df | awk '/dev/ && !space {printf("%.2f", $3/1024); space=1}') "Mb""\033[0m"

# SPACE_ROOT_FREE = размер свободного пространства рутового раздела в Mб с точностью два знака после запятой
echo -e "$col_back$col_t""SPACE_ROOT_FREE""\033[0m"="$col_b_res""$col_t_res"$(df | awk '/dev/ && !space {printf("%.2f", $4/1024); space=1}') "Mb""\033[0m"