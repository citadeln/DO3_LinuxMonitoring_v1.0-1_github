#!/bin/bash

echo "HOSTNAME = $HOSTNAME"

#временная зона в виде: America/New_York UTC -5 (временная зона, должна браться из системы и быть корректной для текущего местоположения)
TIMEZONE=$(timedatectl | awk '/Time zone/{print $3}')
UTC=$(timedatectl | awk '/Time zone/{print substr($5,1,5)}')
echo "TIMEZONE = $TIMEZONE UTC $UTC"

echo "USER = $USER"

#тип и версия операционной системы
VERSION=$(cat /etc/os-release | awk -F \" '/VERSION=/{print $2}')
echo "OS = $OSTYPE, $VERSION"

echo "DATE = $(date +'%d %b %Y %T')"TIME

#время работы системы
UPTIME=$(uptime -p | sed 's/up //')
echo "UPTIME = $UPTIME" substr
UPTIME_SEC=$(cat /proc/uptime | awk '{print$1}')
echo "UPTIME_SEC = $UPTIME_SEC"

# ip-адрес машины в любом из сетевых интерфейсов
IP=$(hostname -I)
echo "IP = $IP"

# сетевая маска любого из сетевых интерфейсов в виде: xxx.xxx.xxx.xxx
MASK=$(ifconfig | awk '/netmask / && !mask {print substr($4,1,15); mask=1}')
echo "MASK = $MASK"

# GATEWAY = ip шлюза по умолчанию
GATEWAY=$(ip route | awk '/default/{print $3}')
echo "GATEWAY = $GATEWAY"

# размер оперативной памяти в Гб c точностью три знака после запятой в виде: 3.125 GB
echo "RAM_TOTAL ="  $(free | awk '/Mem/{printf("%.3f", $2 /(1024*1024))}') "GB"
#!/bin/bash*1024))}')  "Gb"

# размер свободной памяти в Гб c точностью три знака после запятой
echo "RAM_FREE =" $(free | awk '/Mem/{printf("%.3f", $4/(1024*1024))}') "Gb"

# SPACE_ROOT = размер рутового раздела в Mб с точностью два знака после запятой в виде: 254.25 MB
echo "SPACE_ROOT =" $(df | awk '/dev/ && !space {printf("%.2f", $2/1024); space=1}') "Mb"

# SPACE_ROOT_USED = размер занятого пространства рутового раздела в Mб с точностью два знака после запятой
echo "SPACE_ROOT_USED =" $(df | awk '/dev/ && !space {printf("%.2f", $3/1024); space=1}') "Mb"

# SPACE_ROOT_FREE = размер свободного пространства рутового раздела в Mб с точностью два знака после запятой
echo "SPACE_ROOT_FREE =" $(df | awk '/dev/ && !space {printf("%.2f", $4/1024); space=1}') "Mb"