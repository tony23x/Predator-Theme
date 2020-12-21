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
    elif [ "${DISTRO_ID}" = 'parrot' ] ; then
      Distro='Parrot'
    elif [ "${DISTRO_ID}" = 'ubuntu' ] ; then
      Distro='Ubuntu'
    else
      exit 1
    fi
  fi

  if [ -z "${Distro}" ] ; then
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
  if [ "${Distro}" = "Debian" ] || [ "${Distro}" = "Kali" ] || [ "${Distro}" = "Ubuntu" ] || [ "${Distro}" = "Parrot" ] ; then
    apt-get update && apt-get upgrade -y
    apt install git make wget curl python python2 nano proot cowsay perl figlet libcaca-dev caca-utils libffi-dev libgmp-dev libyaml-dev toilet ruby zsh zsh-syntax-highlighting zsh-autosuggestions translate-shell -y
    gem install paint
    gem install trollop
    gem install manpages
    gem install lolcat
    cp Theme/fonts/*.flf /usr/share/figlet >> /dev/null
    cp Theme/cows/*.cow /usr/share/cowsay/cows &>> /dev/null
    cp Theme/cows/*.txt /usr/share/cowsay/cows &>> /dev/null
    cp Theme/depen/zsh/.zshrc $HOME &>> /dev/null
    cp Theme/depen/zsh/.zshrc /root &>> /dev/null
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> $HOME/.zshrc
    chsh -s /bin/zsh
  else
    echo "Distro no soportada"
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
