#!/bin/bash


function aviso {
echo -e "\e[1;36m Extra: \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m anon\e[0m\e[1;33m para borrar tu historial zsh \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m myip\e[0m\e[1;33m para ver tu IP pública \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m trans\e[0m\e[1;33m para traducir desde la terminal \e[0m\n"
echo -e "\e[1;33m Ejemplo de uso del traductor: \e[0m\n"
echo -e "\e[1;32m trans -brief :es 'Hello friend' \e[0m"
echo
}

function aviso2 {
echo -e "\e[1;36m Extras: \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m anon\e[0m\e[1;33m para borrar tu historial zsh \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m su\e[0m\e[1;33m para ejecutar root fake \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m myip\e[0m\e[1;33m para ver tu IP pública \e[0m"
echo -e "\e[1;33m Ejecuta\e[1;32m trans\e[0m\e[1;33m para traducir desde la terminal \e[0m\n"
echo -e "\e[1;33m Ejemplo de uso del traductor: \e[0m\n"
echo -e "\e[1;32m trans -brief :es 'Hello friend' \e[0m"
echo
}


function banner {
sleep 1
clear
echo -e """\033[92m
▄▄▄█████▓ ██░ ██ ▓█████  ███▄ ▄███▓▓█████
▓  ██▒ ▓▒▓██░ ██▒▓█   ▀ ▓██▒▀█▀ ██▒▓█   ▀
▒ ▓██░ ▒░▒██▀▀██░▒███   ▓██    ▓██░▒███
░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄ ▒██    ▒██ ▒▓█  ▄
▒██▒ ░ ░▓█▒░██▓░▒████▒▒██▒   ░██▒░▒████▒
▒ ░░    ▒ ░░▒░▒░░ ▒░ ░░ ▒░   ░  ░░░ ▒░ ░
░     ▒ ░▒░ ░ ░ ░  ░░  ░      ░ ░ ░  ░
░       ░  ░░ ░   ░   ░      ░      ░
░  ░  ░   ░  ░       ░      ░  ░
"""
echo -e """\033[1;36m Elige el cursor y banner que mas te guste! \033[00m"""
sleep 7
}

function skull {
sleep 1
clear
printf "                   \e[97m ______     \e[0m\n"
printf "                 .-        -.    \e[0m\n"
printf "                /            \          \e[0m\n"
printf "  \e[94m* \e[97m                                      \e[90m* \e[97m     \e[0m\n"
printf "         \e[32m* \e[97m\e[0m    |,  .-.  .-.  ,|        \n"
printf "               | )(_ /  \_ )( |      \e[0m\n"
printf "               |/     /\     \|    \e[34m* \e[97m      \e[0m\n"
printf "     (@_       <__    ^^    __>         \e[95m* \e[97m     \e[0m\n"
printf "      ) \_______\__|IIIIII|__/________\e[31m______ \e[97m    \e[0m\n"
printf "  (_)\e[31m@8@8\e[97m{}<_____\e[31m____\e[97m_____________\e[31m________________> \e[97m    \e[0m\n"
printf "      )_/         \ IIIIII /                    \e[31m::::: \e[97m     \e[0m\n"
printf "     (@            --------                        \e[31m:: \e[97m      \e[0m\n"
printf "                                                                                             \n"
printf "         \e[1;94m CODED BY:  Team Th3_Pr3dat0r\e[0m\n"
echo
}

Distro=''
  if [ -f /etc/os-release ] ; then
    DISTRO_ID=$(grep ^ID= /etc/os-release | cut -d= -f2-)
    if [ "${DISTRO_ID}" = 'kali' ] ; then
      Distro='Kali'
    elif [ "${DISTRO_ID}" = 'debian' ] ; then
      Distro='Debian'
    elif [ "${DISTRO_ID}" = 'parrot' ] ; then
      Distro='Parrot'
    elif [ "${DISTRO_ID}" = 'ubuntu' ] ; then
      Distro='Ubuntu'
    elif [ "${DISTRO_ID}" = 'linuxmint' ] ; then
      Distro='Linuxmint'
    fi
  fi

  if [ ! "${Distro}" ] ; then
    Distro='Termux'
  elif [ -z "${Distro}" ] ; then
    fatal "No soporto tu distro del sistema ${OS}"
  fi

user=$(whoami)

function menu {
sleep 1
skull
printf "\e[1;92m Para funcionar bien elige \e[0m\n"
printf "\e[1;92m la terminal en la que estas ahora \e[0m\n"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Termux\e[0m                       \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit    \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Para: \e[0m          \n"
printf "\e[1;91m Userland, Rootless, Kali Linux, Parrot Sec, Ubuntu, Debian, Linuxmint \e[0m          \n"
echo
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 01 || $option == 1 ]]; then
rm /data/data/com.termux/files/usr/etc/motd &>> /dev/null
sleep 1
menu1
elif [[ $option == 02 || $option == 2 ]]; then
rm /etc/motd &>> /dev/null
sed -i '$ d' $HOME/.zshrc
sleep 1
menu1.1
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción no valida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


function menu1 {
skull
echo -e "\033[1;36m Termux\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Cursor 1\e[0m                   \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit    \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Kali Linux\e[0m          \n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Parrot Security\e[0m           \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Cursor BlackArch\e[0m      \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Kali ZSH 2020\e[0m              \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Multicolor\e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m .....\e[0m         \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 01 || $option == 1 ]]; then
rm $HOME/.zshrc &>> /dev/null
cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
echo -e "\n" >> $HOME/.zshrc && echo "PROMPT=$'%{\e[0;31m%}┌─[%{\e[1;34m%}%B$name%{\e[1;33m%}@%{\e[1;36m%}termux%b%{\e[0;31m%}]─[%{\e[0;32m%}%(4~|/%2~|%~)%{\e[0;31m%}]%b\n%{\e[0;31m%}└──╼ %{\e[1;31m%}%B❯%{\e[1;34m%}❯%{\e[1;90m%}❯%{\e[0m%}%b '"  >> $HOME/.zshrc
cat Theme/end.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
sleep 4
menu2
exit 1
elif [[ $option == 02 || $option == 2 ]]; then
rm $HOME/.zshrc &>> /dev/null
cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
echo -e "\n" >> $HOME/.zshrc && echo "PROMPT=$'%{\e[1;31m%}$name@kali%{\e[0m%}:%{\e[1;34m%}%(6~.%-1~/??/%4~.%5~)%{\e[0m%}%(#.%F{white}#.%F{white}$)%{\e[0m%} '" >> $HOME/.zshrc
cat Theme/end.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
sleep 4
menu2
exit 1
elif [[ $option == 03 || $option == 3 ]]; then
rm $HOME/.zshrc &>> /dev/null
cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
echo "name=$name" >> $HOME/.zshrc
echo -e "\n" >> $HOME/.zshrc && echo "PROMPT=$'%{\e[1;31m%}┌─[%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[1;34m%}parrot%{\e[1;31m%}]─[%{\e[0;32m%}%(6~.%-1~/…/%4~.%5~)%{\e[1;31m%}]\n%{\e[1;31m%}└──╼ %(#.%F{yellow}#.%F{yellow}$)%{\e[0m%} '" >> $HOME/.zshrc
cat Theme/end.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
sleep 4
menu2
exit 1
elif [[ $option == 04 || $option == 4 ]]; then
rm $HOME/.zshrc &>> /dev/null
cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
echo "name=$name" >> $HOME/.zshrc
echo -e "\n" >> $HOME/.zshrc && echo "PROMPT=$'%{\e[1;34m%}[%{\e[1;36m%} $name %{\e[90m%}%(6~.%-1~/??/%4~.%5~) %{\e[1;34m%}]%(#.%F{\e[90m%}#.%F%{\e[90m%}$) '" >> $HOME/.zshrc
cat Theme/end.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
sleep 4
menu2
exit 1
elif [[ $option == 05 || $option == 5 ]]; then
rm $HOME/.zshrc &>> /dev/null
cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
echo "name=$name" >> $HOME/.zshrc
echo -e "\n" >> $HOME/.zshrc && echo "PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)──}(%B%F{%(#.red.blue)}$name%(#.💀.㉿)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{yellow}#.%F{blue}$)%b%F{reset} '" >> $HOME/.zshrc
cat Theme/end.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
sleep 4
menu2
exit 1
elif [[ $option == 06 || $option == 6 ]]; then
rm $HOME/.zshrc &>> /dev/null
cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
echo -e "\n" >> $HOME/.zshrc
echo "PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[0m%}%{\e[0;36m%}termux%{\e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[0;33m%} %W \e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[1;33m%}%t %{\e[0;34m%}%B]%b%{\e[0m%}\n%{\e[0;34m%}%B├─%{\e[0;34m%}%B[%b%{\e[1;33m%}%(4~|/%2~|%~)%{\e[0;34m%}%B]%b%{\e[0m%} %{\e[0m%}%b\n%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]%{\e[0m%}%b '" >> $HOME/.zshrc
cat Theme/end.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
sleep 4
menu2
exit 1
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción no valida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


function menu1.1 {
skull
echo -e "\033[1;36m ${Distro}\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Cursor 1\e[0m                   \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit    \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Kali Linux\e[0m          \n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Parrot Security\e[0m           \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Cursor BlackArch\e[0m      \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Kali ZSH 2020\e[0m              \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Cursor Multicolor\e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m .....\e[0m         \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 01 || $option == 1 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[0;31m%}┌─[%{\e[1;34m%}%B$name%{\e[1;33m%}@%{\e[1;36m%}${Distro}%b%{\e[0;31m%}]─[%{\e[0;32m%}%(4~|/%2~|%~)%{\e[0;31m%}]%b\n%{\e[0;31m%}└──╼ %{\e[1;31m%}%B❯%{\e[1;34m%}❯%{\e[1;90m%}❯%{\e[0m%}%b '"  >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[0;31m%}┌─[%{\e[1;34m%}%B$name%{\e[1;33m%}@%{\e[1;36m%}${Distro}%b%{\e[0;31m%}]─[%{\e[0;32m%}%(4~|/%2~|%~)%{\e[0;31m%}]%b\n%{\e[0;31m%}└──╼ %{\e[1;31m%}%B❯%{\e[1;34m%}❯%{\e[1;90m%}❯%{\e[0m%}%b '"  >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sudo mv /root/.zshrc /root/zshrc && head -n -16 /root/zshrc > /root/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    sudo echo "PROMPT=$'%{\e[0;31m%}┌─[%{\e[1;34m%}%B$name%{\e[1;33m%}@%{\e[1;36m%}${Distro}%b%{\e[0;31m%}]─[%{\e[0;32m%}%(4~|/%2~|%~)%{\e[0;31m%}]%b\n%{\e[0;31m%}└──╼ %{\e[1;31m%}%B❯%{\e[1;34m%}❯%{\e[1;90m%}❯%{\e[0m%}%b '"  >> /root/.zshrc
    sudo cat Theme/end.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  fi
elif [[ $option == 02 || $option == 2 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[1;31m%}$name@kali%{\e[0m%}:%{\e[1;34m%}%(6~.%-1~/??/%4~.%5~)%{\e[0m%}%(#.%F{white}#.%F{white}$)%{\e[0m%} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[1;31m%}$name@kali%{\e[0m%}:%{\e[1;34m%}%(6~.%-1~/??/%4~.%5~)%{\e[0m%}%(#.%F{white}#.%F{white}$)%{\e[0m%} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sudo mv /root/.zshrc /root/zshrc && head -n -16 /root/zshrc > /root/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    sudo echo "PROMPT=$'%{\e[1;31m%}$name@kali%{\e[0m%}:%{\e[1;34m%}%(6~.%-1~/??/%4~.%5~)%{\e[0m%}%(#.%F{white}#.%F{white}$)%{\e[0m%} '" >> /root/.zshrc
    sudo cat Theme/end.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  fi
elif [[ $option == 03 || $option == 3 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[1;31m%}┌─[%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[1;34m%}parrot%{\e[1;31m%}]─[%{\e[0;32m%}%(6~.%-1~/…/%4~.%5~)%{\e[1;31m%}]\n%{\e[1;31m%}└──╼ %(#.%F{yellow}#.%F{yellow}$)%{\e[0m%} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[1;31m%}┌─[%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[1;34m%}parrot%{\e[1;31m%}]─[%{\e[0;32m%}%(6~.%-1~/…/%4~.%5~)%{\e[1;31m%}]\n%{\e[1;31m%}└──╼ %(#.%F{yellow}#.%F{yellow}$)%{\e[0m%} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sudo mv /root/.zshrc /root/zshrc && head -n -16 /root/zshrc > /root/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    sudo echo "PROMPT=$'%{\e[1;31m%}┌─[%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[1;34m%}parrot%{\e[1;31m%}]─[%{\e[0;32m%}%(6~.%-1~/…/%4~.%5~)%{\e[1;31m%}]\n%{\e[1;31m%}└──╼ %(#.%F{yellow}#.%F{yellow}$)%{\e[0m%} '" >> /root/.zshrc
    sudo cat Theme/end.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  fi
elif [[ $option == 04 || $option == 4 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[1;34m%}[%{\e[1;36m%} $name %{\e[90m%}%(6~.%-1~/??/%4~.%5~) %{\e[1;34m%}]%(#.%F{\e[90m%}#.%F%{\e[90m%}$) '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    head -n -16 $HOME/.zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[1;34m%}[%{\e[1;36m%} $name %{\e[90m%}%(6~.%-1~/??/%4~.%5~) %{\e[1;34m%}]%(#.%F{\e[90m%}#.%F%{\e[90m%}$) '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sudo mv /root/.zshrc /root/zshrc && head -n -16 /root/zshrc > /root/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    sudo echo "PROMPT=$'%{\e[1;34m%}[%{\e[1;36m%} $name %{\e[90m%}%(6~.%-1~/??/%4~.%5~) %{\e[1;34m%}]%(#.%F{\e[90m%}#.%F%{\e[90m%}$) '" >> /root/.zshrc
    sudo cat Theme/end.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  fi
elif [[ $option == 05 || $option == 5 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)──}(%B%F{%(#.red.blue)}$name%(#.💀.㉿)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{yellow}#.%F{blue}$)%b%F{reset} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)──}(%B%F{%(#.red.blue)}$name%(#.💀.㉿)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{yellow}#.%F{blue}$)%b%F{reset} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sudo mv /root/.zshrc /root/zshrc && head -n -16 /root/zshrc > /root/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    sudo echo "PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)──}(%B%F{%(#.red.blue)}$name%(#.💀.㉿)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{yellow}#.%F{blue}$)%b%F{reset} '" >> /root/.zshrc
    sudo cat Theme/end.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  fi
elif [[ $option == 06 || $option == 6 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre de usuario: \e[0m\en' name
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    mv $HOME/.zshrc zshrc && head -n -16 $HOME/zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[0m%}%{\e[0;36m%}${Distro}%{\e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[0;33m%} %W \e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[1;33m%}%t %{\e[0;34m%}%B]%b%{\e[0m%}\n%{\e[0;34m%}%B├─%{\e[0;34m%}%B[%b%{\e[1;33m%}%(4~|/%2~|%~)%{\e[0;34m%}%B]%b%{\e[0m%} %{\e[0m%}%b\n%{\e[0;34m%}%B└─%B[%(#.%F%{\e[1;31m%}#.%F%{\e[1;35m%}$)%F%{\e[1;34m%}]%b%F{reset} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    head -n -16 $HOME/.zshrc > $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo "PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[0m%}%{\e[0;36m%}${Distro}%{\e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[0;33m%} %W \e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[1;33m%}%t %{\e[0;34m%}%B]%b%{\e[0m%}\n%{\e[0;34m%}%B├─%{\e[0;34m%}%B[%b%{\e[1;33m%}%(4~|/%2~|%~)%{\e[0;34m%}%B]%b%{\e[0m%} %{\e[0m%}%b\n%{\e[0;34m%}%B└─%B[%(#.%F%{\e[1;31m%}#.%F%{\e[1;35m%}$)%F%{\e[1;34m%}]%b%F{reset} '" >> $HOME/.zshrc
    cat Theme/end.txt >> $HOME/.zshrc
    sudo mv /root/.zshrc /root/zshrc && head -n -16 /root/zshrc > /root/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    echo "PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}$name%{\e[1;33m%}@%{\e[0m%}%{\e[0;36m%}${Distro}%{\e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[0;33m%} %W \e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[1;33m%}%t %{\e[0;34m%}%B]%b%{\e[0m%}\n%{\e[0;34m%}%B├─%{\e[0;34m%}%B[%b%{\e[1;33m%}%(4~|/%2~|%~)%{\e[0;34m%}%B]%b%{\e[0m%} %{\e[0m%}%b\n%{\e[0;34m%}%B└─%B[%(#.%F%{\e[1;31m%}#.%F%{\e[1;35m%}$)%F%{\e[1;34m%}]%b%F{reset} '" >> /root/.zshrc
    sudo cat Theme/end.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora elige un banner :3\e[0m"
    sleep 4
    menu2.1
    exit 1
  fi
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción no valida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


function menu2 {
skull
echo -e "\033[1;36m Termux\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Banners Normales\e[0m           \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit    \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Banners Multicolor\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Banners Name Fonts\e[0m\n"
printf "                                                                                                                       \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 01 || $option == 1 ]]; then
clear
bannersN
elif [[ $option == 02 || $option == 2 ]]; then
clear
bannersM
elif [[ $option == 03 || $option == 3 ]]; then
clear
nameF2
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción no valida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


function menu2.1 {
skull
echo -e "\033[1;36m ${Distro}\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Banners Normales\e[0m           \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit    \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Banners Multicolor\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Banners Name Fonts\e[0m\n"
printf "                                                                                                                       \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 01 || $option == 1 ]]; then
clear
bannersN2
elif [[ $option == 02 || $option == 2 ]]; then
clear
bannersM2
elif [[ $option == 03 || $option == 3 ]]; then
clear
nameF
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción no valida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


function bannersN {
skull
echo -e "\033[1;36m Termux\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Calavera\e[0m            \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m Detective X\e[0m    \e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Regresar\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Calavera-Cyber\e[0m      \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m Map World\e[0m      \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Calavera-Espada\e[0m     \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Arch Linux\e[0m         \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Calavera-Sploit\e[0m     \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m BlackArch\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Articuno\e[0m            \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m Demon Red\e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Mando-PS2\e[0m           \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m Read OS\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Mortal-Kombat\e[0m       \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m Hydra\e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Pikachu\e[0m             \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m Anonymous\e[0m     \n"
printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m Python\e[0m              \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m Anonymous 2\e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Spartan\e[0m             \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m Cobra \e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Spider\e[0m              \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m Demon Die \e[0m \n"
printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Demon\e[0m               \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m Scorpion \e[0m    \n"
printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m Skeleton-Sploit\e[0m     \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m Ivam3 \e[0m       \n"
printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m Demon-Key\e[0m           \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m Dragon Sea \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Demon-Head\e[0m          \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m Termux\e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Bat\e[0m                 \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m Wifite\e[0m      \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash ~/Predator-Theme/Theme/banners/calavera.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 2 || $option == 02 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 ~/Predator-Theme/Theme/banners/calavera-cyber.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 3 || $option == 03 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash ~/Predator-Theme/Theme/banners/calavera-espada.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 4 || $option == 04 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash /data/data/com.termux/files/home/Predator-Theme/Theme/banners/calavera-exploit.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 5 || $option == 05 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 ~/Predator-Theme/Theme/banners/articuno.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 6 || $option == 06 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "setterm -foreground cyan" >> $HOME/.zshrc
echo "cat /data/data/com.termux/files/home/Predator-Theme/Theme/banners/mando-ps2.txt" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 7 || $option == 07 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "setterm -foreground cyan" >> $HOME/.zshrc
echo "cat /data/data/com.termux/files/home/Predator-Theme/Theme/banners/mortal-kombat.txt" >> $HOME/.zshrc
echo "setterm -foreground red" >> $HOME/.zshrc
echo "cat /data/data/com.termux/files/home/Predator-Theme/Theme/banners/logo-mortal.txt" >> $HOME/.zshrc
echo "setterm -foreground cyan" >> $HOME/.zshrc
echo "cat /data/data/com.termux/files/home/Predator-Theme/Theme/banners/logo-mortal-line.txt" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 8 || $option == 08 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 /data/data/com.termux/files/home/Predator-Theme/Theme/banners/pikachu.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 9 || $option == 09 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/python.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 10 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 /data/data/com.termux/files/home/Predator-Theme/Theme/banners/spartan.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 11 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/spider.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 12 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash ~/Predator-Theme/Theme/banners/demon.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 13 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash ~/Predator-Theme/Theme/banners/skeleton-sploit.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 14 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash $HOME/Predator-Theme/Theme/banners/demon-key.sh" >> $HOME/,zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 15 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash $HOME/Predator-Theme/Theme/banners/demon-head.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 16 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 /data/data/com.termux/files/home/Predator-Theme/Theme/banners/banner-bat.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 17 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "setterm -foreground blue" >> $HOME/.zshrc
echo "cat /data/data/com.termux/files/home/Predator-Theme/Theme/banners/detectivex.txt" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 18 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash /data/data/com.termux/files/home/Predator-Theme/Theme/banners/map.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 19 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash /data/data/com.termux/files/home/Predator-Theme/Theme/banners/arch.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 20 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo -e "\n neofetch --ascii_distro BlackArch" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 21 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/demon-red.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 22 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/banner-readOS.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 23 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/hydra.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 24 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/anonymous.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 25 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/anonymous2.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 26 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/cobra.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 27 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/demon-die.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 28 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/scorpion.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 29 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/ivam3.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 30 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python2 $HOME/Predator-Theme/Theme/banners/dragon-sea.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 31 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "bash ~/Predator-Theme/Theme/banners/Termux.sh" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 32 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "python3 /data/data/com.termux/files/home/Predator-Theme/Theme/banners/wifite.py" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 98 ]]; then
menu2
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción Invalida!\e[0m\n"
sleep 2
clear
exit 1
fi
}

function bannersN2 {
skull
echo -e "\033[1;36m ${Distro}\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Calavera\e[0m            \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m Detective X\e[0m    \e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Regresar\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Calavera-Cyber\e[0m      \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m Map World\e[0m      \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Calavera-Espada\e[0m     \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Arch Linux\e[0m         \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Calavera-Sploit\e[0m     \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m BlackArch\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Articuno\e[0m            \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m Demon Red\e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Mando-PS2\e[0m           \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m Read OS\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Mortal-Kombat\e[0m       \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m Hydra\e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Pikachu\e[0m             \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m Anonymous\e[0m     \n"
printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m Python\e[0m              \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m Anonymous 2\e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Spartan\e[0m             \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m Cobra\e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Spider\e[0m              \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m Demon Die\e[0m \n"
printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Demon\e[0m               \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m Scorpion\e[0m    \n"
printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m Skeleton-Sploit\e[0m     \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m Ivam3\e[0m       \n"
printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m Demon-Key\e[0m           \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m Dragon Sea\e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Demon-Head\e[0m          \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m Termux\e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Bat\e[0m                 \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m Wifite\e[0m      \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/calavera.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/calavera.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/calavera.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 2 || $option == 02 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/calavera-cyber.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/calavera-cyber.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/calavera-cyber.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 3 || $option == 03 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/calavera.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/calavera.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/calavera.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 4 || $option == 04 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/calavera-exploit.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/calavera-exploit.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/calavera-exploit.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 5 || $option == 05 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/articuno.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/articuno.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/articuno.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 6 || $option == 06 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "setterm -foreground cyan" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/mando-ps2.txt" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "setterm -foreground cyan" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/mando-ps2.txt" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "setterm -foreground cyan" >> /root/.zshrc
    sudo echo "cat $HOME/Predator-Theme/Theme/banners/mando-ps2.txt" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 7 || $option == 07 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "setterm -foreground cyan" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/mortal-kombat.txt" >> $HOME/.zshrc
    echo "setterm -foreground red" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/logo-mortal.txt" >> $HOME/.zshrc
    echo "setterm -foreground cyan" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/logo-mortal-line.txt" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "setterm -foreground cyan" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/mortal-kombat.txt" >> $HOME/.zshrc
    echo "setterm -foreground red" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/logo-mortal.txt" >> $HOME/.zshrc
    echo "setterm -foreground cyan" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/logo-mortal-line.txt" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "setterm -foreground cyan" >> /root/.zshrc
    sudo echo "cat $HOME/Predator-Theme/Theme/banners/mortal-kombat.txt" >> /root/.zshrc
    sudo echo "setterm -foreground red" >> /root/.zshrc
    sudo echo "cat $HOME/Predator-Theme/Theme/banners/logo-mortal.txt" >> /root/.zshrc
    sudo echo "setterm -foreground cyan" >> /root/.zshrc
    sudo echo "cat $HOME/Predator-Theme/Theme/banners/logo-mortal-line.txt" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 8 || $option == 08 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/pikachu.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/pikachu.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/pikachu.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 9 || $option == 09 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/python.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/python.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/python.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 11 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/spider.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/spider.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/spider.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 12 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/demon.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/demon.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/demon.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 13 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/skeleton-sploit.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/skeleton-sploit.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/skeleton-sploit.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 14 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/demon-key.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/demon-key.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/demon-key.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 15 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/demon-head.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/demon-head.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/demon-head.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 16 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/banner-bat.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/banner-bat.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/banner-bat.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 17 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "setterm -foreground blue" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/detectivex.txt" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "setterm -foreground blue" >> $HOME/.zshrc
    echo "cat $HOME/Predator-Theme/Theme/banners/detectivex.txt" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "setterm -foreground blue" >> /root/.zshrc
    sudo echo "cat $HOME/Predator-Theme/Theme/banners/detectivex.txt" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 18 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/map.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/map.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/map.sh" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 19 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/arch.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/arch.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/arch.sh" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 20 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo -e "\n neofetch --ascii_distro BlackArch" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo -e "\n neofetch --ascii_distro BlackArch" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo -e "\n neofetch --ascii_distro BlackArch" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 21 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/demon-red.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/demon-red.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/demon-red.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 22 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/banner-readOS.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/banner-readOS.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/banner-readOS.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 23 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/hydra.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/hydra.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/hydra.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 24 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/anonymous.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/anonymous.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/anonymous.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 25 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/anonymous2.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/anonymous2.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/anonymous2.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 26 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/cobra.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/cobra.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/cobra.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 27 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/demon-die.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/demon-die.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/demon-die.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 28 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/scorpion.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/scorpion.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/scorpion.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 29 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/ivam3.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/ivam3.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/ivam3.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 30 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/demon-red.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python2 $HOME/Predator-Theme/Theme/banners/dragon-sea.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/dragon-sea.py" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 31 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "bash $HOME/Predator-Theme/Theme/banners/Termux.sh" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo bash $HOME/Predator-Theme/Theme/banners/Termux.sh" >> $HOME/.zshrc
    sudo echo "sudo bash $HOME/Predator-Theme/Theme/banners/Termux.sh" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 32 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "python2 $HOME/Predator-Theme/Theme/banners/calavera-cyber.py" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "sudo python3 $HOME/Predator-Theme/Theme/banners/wifite.py" >> $HOME/.zshrc
    sudo echo "sudo python2 $HOME/Predator-Theme/Theme/banners/wifite.py" >> /root/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[  $option == 98 ]];then
menu2.1
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción Invalida!\e[0m\n"
sleep 2
clear
exit 1
fi
}

function bannersM {
skull
echo -e "\033[1;36m Termux\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Alien\e[0m               \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m Prinny\e[0m    \e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Regresar\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Beef\e[0m                \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m Phoenix\e[0m   \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Calavera\e[0m            \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Tiger Shark\e[0m         \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Cuervo\e[0m              \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m Skull Bom\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Dragon\e[0m              \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m ReadOS\e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Dragon-logo\e[0m         \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Error404\e[0m            \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Gales\e[0m               \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m     \n"
printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m Gryphon\e[0m             \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Flash-Logo\e[0m          \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Nethunter\e[0m           \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m \n"
printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Girls Sex\e[0m           \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m    \n"
printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m Android\e[0m             \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m       \n"
printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m Heart-sploit\e[0m        \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Pacman\e[0m              \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Evil-Eyes\e[0m           \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m      \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un número: \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f alien.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 2 || $option == 02 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f beef.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 3 || $option == 03 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f calavera.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 4 || $option == 04 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f cuervo.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 5 || $option == 05 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f dragon.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 6 || $option == 06 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f dragon-logo.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 7 || $option == 07 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f error404.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 8 || $option == 08 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f gales.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 9 || $option == 09 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f gryphon.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 10 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f flash-logo.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 11 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f nethunter.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 12 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f girls-sex.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 13 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f android.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 14 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f heart-sploit.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 15 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f pacman.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 16 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f eyes.cow $name | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 17 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f prinny.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 18 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f phoenix.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 19 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f shark-tiger.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 20 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cowsay -f skull-bom.cow $name | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 21 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
echo "cat /usr/share/cowsay/cows/reados.txt | lolcat" >> $HOME/.zshrc
echo "date | lolcat" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/cows/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 22 ]]; then
exit 1
elif [[ $option == 23 ]]; then
exit 1
elif [[ $option == 24 ]]; then
exit 1
elif [[ $option == 25 ]]; then
exit 1
elif [[ $option == 26 ]]; then
exit 1
elif [[ $option == 27 ]]; then
exit 1
elif [[ $option == 28 ]]; then
exit 1
elif [[ $option == 29 ]]; then
exit 1
elif [[ $option == 30 ]]; then
exit 1
elif [[ $option == 31 ]]; then
exit 1
elif [[ $option == 32 ]]; then
exit 1
elif [[ $option == 98 ]]; then
menu2
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción Invalida!\e[0m\n"
sleep 2
clear
exit 1
fi
}

function bannersM2 {
skull
echo -e "\033[1;36m ${Distro}\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Alien\e[0m               \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m Prinny\e[0m    \e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Regresar\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Beef\e[0m                \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m Phoenix\e[0m   \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Calavera\e[0m            \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Tiger Shark\e[0m         \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Cuervo\e[0m              \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m Skull Bom\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Dragon\e[0m              \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m Kali Linux\e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Dragon-logo\e[0m         \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m ReadOS\e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Error404\e[0m            \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Gales\e[0m               \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m     \n"
printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m Gryphon\e[0m             \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Flash-Logo\e[0m          \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m        \n"
printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Nethunter\e[0m           \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m \n"
printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Girls Sex\e[0m           \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m    \n"
printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m Android\e[0m             \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m       \n"
printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m Heart-sploit\e[0m        \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Pacman\e[0m              \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Evil-Eyes\e[0m           \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m ..... \e[0m      \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un número: \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f alien.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f alien.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f alien.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 2 || $option == 02 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f beef.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f beef.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f beef.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 3 || $option == 03 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f calavera.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f calavera.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f calavera.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 4 || $option == 04 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f cuervo.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f cuervo.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f cuervo.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 5 || $option == 05 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f dragon.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f dragon.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f dragon.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 6 || $option == 06 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f dragon-logo.cow $name | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f dragon-logo.cow $name | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f dragon-logo.cow $name | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 7 || $option == 07 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f error404.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f error404.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f error404.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 8 || $option == 08 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f gales.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f gales.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f gales.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 9 || $option == 09 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f gryphon.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f gryphon.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f gryphon.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 10 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f flash-logo.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f flash-logo.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f flash-logo.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 11 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f nethunter.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f nethunter.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f nethunter.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 12 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f girls-sex.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f girls-sex.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f girls-sex.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 13 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f android.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f android.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f android.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 14 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f heart-sploit.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f heart-sploit.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "$HOME/./../../usr/games/cowsay -f heart-sploit.cow $name | lolcat" >> /root/.zshrc
    sudo echo "date | lolcat" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 15 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f pacman.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f pacman.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 16 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f eyes.cow $name | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f eyes.cow $name | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 17 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f prinny.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f prinny.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 18 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f phoenix.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f phoenix.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 19 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f shark-tiger.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f shark-tiger.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 20 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f skull-bom.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f skull-bom.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 21 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f kali-linux.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo "clear" >> $HOME/.zshrc
    echo "$HOME/./../../usr/games/cowsay -f kali-linux.cow $name | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 22 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    echo "cat /usr/share/cowsay/cows/reados.txt | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo "clear" >> $HOME/.zshrc
    echo "cat /usr/share/cowsay/cows/reados.txt | lolcat" >> $HOME/.zshrc
    echo "date | lolcat" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 23 ]]; then
exit 1
elif [[ $option == 24 ]]; then
exit 1
elif [[ $option == 25 ]]; then
exit 1
elif [[ $option == 26 ]]; then
exit 1
elif [[ $option == 27 ]]; then
exit 1
elif [[ $option == 28 ]]; then
exit 1
elif [[ $option == 29 ]]; then
exit 1
elif [[ $option == 30 ]]; then
exit 1
elif [[ $option == 31 ]]; then
exit 1
elif [[ $option == 32 ]]; then
exit 1
elif [[ $option == 98 ]]; then
menu2.1
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción Invalida!\e[0m\n"
sleep 2
clear
exit 1
fi
}

function nameF {
skull
echo -e "\033[1;36m ${Distro}\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Delta Corps Priest 1\e[0m               \e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m ......\e[0m    \e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Regresar\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Bloody\e[0m                             \e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m ......\e[0m    \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Crazy\e[0m                              \e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m .....\e[0m         \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un número: \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf
    echo "setterm -foreground $colorf" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "clear" >> $HOME/.zshrc
    echo "figlet -w 100 -t -k -f Delta $name_f" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    sudo echo "clear" >> $HOME/.zshrc
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf
    sudo echo "setterm -foreground $colorf" >> $HOME/.zshrc
    sudo echo "echo" >> $HOME/.zshrc
    sudo echo "clear" >> $HOME/.zshrc
    sudo echo "figlet -w 100 -t -k -f Delta $name_f" >> $HOME/.zshrc
    sudo echo "echo" >> $HOME/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "setterm -foreground $colorf" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "figlet -w 100 -t -k -f Delta $name_f" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 2 || $option == 02 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf
    echo "setterm -foreground $colorf" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "figlet -w 100 -t -k -f Bloody $name_f" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf
    echo "setterm -foreground $colorf" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "figlet -w 100 -t -k -f Bloody $name_f" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "setterm -foreground $colorf" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "figlet -w 100 -t -k -f Bloody $name_f" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 3 || $option == 03 ]]; then
  if [[ $user == root ]]; then
    echo -e "\e[1;33m Ok Root...\e[0m"
    echo "clear" >> $HOME/.zshrc
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf
    echo "setterm -foreground $colorf" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "figlet -w 100 -t -k -f crazy $name_f" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  else
    echo -e "\e[1;33m Ok...\e[0m"
    echo "clear" >> $HOME/.zshrc
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf
    echo "setterm -foreground $colorf" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    echo "figlet -w 100 -t -k -f crazy $name_f" >> $HOME/.zshrc
    echo "echo" >> $HOME/.zshrc
    cat Theme/banners/bash_k/anon.txt >> $HOME/.zshrc
    sudo echo "setterm -foreground $colorf" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo echo "clear" >> /root/.zshrc
    sudo echo "figlet -w 100 -t -k -f crazy $name_f" >> /root/.zshrc
    sudo echo "echo" >> /root/.zshrc
    sudo cat Theme/banners/bash_k/anon.txt >> /root/.zshrc
    sleep 4
    echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
    aviso
    exit 1
  fi
elif [[ $option == 4 || $option == 04 ]]; then
exit 1
elif [[ $option == 5 || $option == 05 ]]; then
exit 1
elif [[ $option == 6 || $option == 06 ]]; then
exit 1
elif [[ $option == 98 ]]; then
menu2.1
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción Invalida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


function nameF2 {
skull
echo -e "\033[1;36m Termux\033[00m"
echo
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Delta Corps Priest 1\e[0m               \e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m ......\e[0m    \e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Regresar\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Bloody\e[0m                             \e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m ......\e[0m    \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Exit\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Crazy\e[0m                              \e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m .....\e[0m         \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un número: \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f2
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf2
echo "setterm -foreground $colorf2" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
echo "figlet -w 100 -t -k -f Delta $name_f2" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 2 || $option == 02 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f2
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf2
echo "setterm -foreground $colorf2" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
echo "figlet -w 100 -t -k -f Bloody $name_f2" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 3 || $option == 03 ]]; then
echo -e "\e[1;33m Ok...\e[0m"
echo "clear" >> $HOME/.zshrc
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe tu nombre para el banner: \e[0m\en' name_f2
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escribe un color(red,green,yellow,blue,magenta,cyan,white): \e[0m\en' colorf2
echo "setterm -foreground $colorf2" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
echo "figlet -w 100 -t -k -f crazy $name_f2" >> $HOME/.zshrc
echo "echo" >> $HOME/.zshrc
cat Theme/banners/bash/anon.txt >> $HOME/.zshrc
sleep 4
echo -e "\e[1;33m Listo!, ahora abre otra ventana :3\e[0m"
aviso2
exit 1
elif [[ $option == 4 || $option == 04 ]]; then
exit 1
elif [[ $option == 5 || $option == 05 ]]; then
exit 1
elif [[ $option == 6 || $option == 06 ]]; then
exit 1
elif [[ $option == 98 ]]; then
menu2.1
elif [[ $option == 99 ]]; then
exit 1
else
printf "\e[1;93m [!] Opción Invalida!\e[0m\n"
sleep 2
clear
exit 1
fi
}


banner
menu
