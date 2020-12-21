#!/bin/bash

info()  { echo -e "\\033[1;36m[INFO]\\033[0m  $*"; }
fatal() { echo -e "\\033[1;31m[FATAL]\\033[0m  $*"; exit 1 ; }

arch=$(uname -m)

command_exists () {

  command -v "${1}" >/dev/null 2>&1
}


check_os () {

  info "Detectando SO..."
  sleep 2

  OS=$(uname)
  readonly OS
  info "Sistema Operativo: $OS"
  sleep 2
  if [ "${OS}" = "Linux" ] ; then
    info "Iniciando instalación en Linux..."
    sleep 2
    install_linux
  else
    fatal "No soporto el sistema: $OS"
  fi
}


install_linux () {

  info "Detectando distro linux..."

  Distro=''
  if [ -f /etc/os-release ] ; then
    DISTRO_ID=$(grep ^ID= /etc/os-release | cut -d= -f2-)
    if [ "${DISTRO_ID}" = 'kali' ] ; then
      Distro='Kali'
    elif [ "${DISTRO_ID}" = 'debian' ] ; then
      Distro='Debian'
    elif [ "${DISTRO_ID}" = 'ubuntu' ] ; then
      Distro='Ubuntu'
    elif [ "${DISTRO_ID}" = 'linuxmint' ] ; then
      Distro='Linuxmint'
    elif [ "${DISTRO_ID}" = 'parrot' ] ; then
      Distro='Parrot'
    fi
  fi

  if [ ! "${Distro}" ] ; then
    Distro='Termux'
  elif [ -z "${Distro}" ] ; then
    fatal "No soporto tu distro del sistema ${OS}"
  fi

  readonly Distro
  sleep 2
  info "Distro Linux: ${Distro}"
  sleep 2
  neofetch --ascii_distro $Distro
  echo
  info "Instalando en ${Distro} paquetes necesarios..."
  sleep 3
  if [ "${Distro}" = "Debian" ] || [ "${Distro}" = "Kali" ] || [ "${Distro}" = "Parrot" ] ; then
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt install git make wget curl python python2 python3 python3-pip nano proot cowsay perl figlet libcaca-dev caca-utils libffi-dev libgmp-dev libyaml-dev toilet ruby zsh zsh-syntax-highlighting zsh-autosuggestions translate-shell -y
    python3 -m pip install colorama
    sudo gem install paint
    sudo gem install trollop
    sudo gem install manpages
    sudo gem install lolcat
    clear
    echo -e "\e[1;33m Cambiando propietario de /root ...\e[0m"
    echo -e "\e[1;33m Cuando estés conforme usa: \e[1;32m sudo chown root /root\e[0m"
    echo -e "\e[1;33m Para volver por defecto el permiso a \e[1;32m /root\e[0m"
    sudo chown $USER /root
    sleep 9
    sudo cp Theme/fonts/*.flf /usr/share/figlet &>> /dev/null
    sudo cp Theme/cows/*.cow /usr/share/cowsay/cows &>> /dev/null
    sudo cp Theme/cows/*.txt /usr/share/cowsay/cows &>> /dev/null
    sudo cp Theme/depen/zsh/.zshrc $HOME &>> /dev/null
    cp Theme/depen/zsh/.zshrc /root &>> /dev/null
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    clear
    echo
    printf "\e[1;92m Para que funcione ZSH elige tu terminal \e[0m\n"
    echo
    printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Distro Linux \e[0m          \n"
    printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Userland \e[0m          \n"
    echo
    read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Elija un numero: \e[0m\en' optionz
    if [[ $optionz == 01 || $optionz == 1 ]]; then
    chsh -s /bin/zsh
    sleep 1
    elif [[ $optionz == 02 || $optionz == 2 ]]; then
    chsh -s /usr/bin/zsh $USER
    sudo chsh -s /usr/bin/zsh root
    sleep 1
    else
    printf "\e[1;93m [!] Opción no valida!\e[0m\n"
    sleep 2
    exit 1
    fi
  elif [ "${Distro}" = "Linuxmint" ] || [ "${Distro}" = "Ubuntu" ]; then
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt install git make wget curl python python3 python3-pip nano proot cowsay perl figlet libcaca-dev caca-utils libffi-dev libgmp-dev libyaml-dev toilet ruby zsh zsh-syntax-highlighting translate-shell -y
    sudo gem install paint
    sudo gem install trollop
    sudo gem install manpages
    sudo gem install lolcat
    clear
    echo -e "\e[1;33m Cambiando propietario de /root ...\e[0m"
    echo -e "\e[1;33m Cuando estés conforme usa: \e[1;32m sudo chown root /root\e[0m"
    echo -e "\e[1;33m Para volver por defecto el permiso a \e[1;32m /root\e[0m"
    sudo chown $USER /root
    sleep 9
    sudo cp Theme/fonts/*.flf /usr/share/figlet &>> /dev/null
    sudo cp Theme/cows/*.cow /usr/share/cowsay/cows &>> /dev/null
    sudo cp Theme/cows/*.txt /usr/share/cowsay/cows &>> /dev/null
    cp Theme/depen/zsh/.zshrc $HOME &>> /dev/null
    cp Theme/depen/zsh/.zshrc /root &>> /dev/null
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    sudo echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> /root/.zshrc
    info "Clonando repo de ZSH...\e[0m\n"
    sleep 2
    cd /usr/share; git clone https://github.com/zsh-users/zsh-autosuggestions.git
    cd /usr/share/; git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    mkdir $HOME/.zsh &>> /dev/null
    clear
    echo
    chsh -s $(which zsh)
    sudo chsh -s $(which zsh)
  elif [ "${Distro}" = "Termux" ]; then
    pkg update && pkg upgrade -y
    termux-setup-storage
    pkg install -y git wget curl python python2 nano proot cowsay perl figlet libcaca toilet libandroid-glob libffi libgmp libyaml ruby ncurses-utils zsh
    cp Theme/fonts/*.flf $PREFIX/share/figlet &>> /dev/null
    mkdir $HOME/.termux &>> /dev/null
    cp Theme/termux.properties $HOME/.termux &>> /dev/null
    cp Theme/cows/*.cow $PREFIX/share/cows/ &>> /dev/null
    cp Theme/cows/*.txt $PREFIX/share/cows/ &>> /dev/null
    gem install paint trollop manpages lolcat
    pip2 install colorama
    pip3 install colorama
    info "Clonando repo de ZSH...\e[0m\n"
    sleep 2
    cd $HOME; git clone https://github.com/zsh-users/zsh-autosuggestions.git
    cd $HOME; git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    mkdir $HOME/.zsh &>> /dev/null
    mv $HOME/zsh-autosuggestions $HOME/.zsh &>> /dev/null
    mv $HOME/zsh-syntax-highlighting $HOME/.zsh &>> /dev/null
    info "Clonando repo translate...\e[0m\n"
    sleep 2
    cd $HOME; git clone https://github.com/soimort/translate-shell.git
    cd $HOME/translate-shell; make
    cd $HOME/translate-shell; make install
    mkdir $HOME/.zsh &>> /dev/null
    mv $HOME/zsh-autosuggestions $HOME/.zsh &>> /dev/null
    cp Theme/depen/termux/.zshrc $HOME &>> /dev/null
    chsh -s zsh
    clear
  else
    echo "Distro no soportada!, sorry :b"
  fi
}

finish () {
  echo
  info "Instalación completada!"
  echo
  info "Ejecuta: \\033[1;32m bash theme.sh\\033[0m  para personalizar ;)"
  echo
}



main () {
  clear
  check_os
  finish
}

main "$@"
