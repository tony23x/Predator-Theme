<h1 align="center"> <i> Predator-Theme V.5.0 </i> </h1>
<p align="center">
  <img src="https://user-images.githubusercontent.com/55555800/94959784-6120d500-04b7-11eb-89ad-c97a528154fa.gif" alt="PREVIEW" align="center">
</p>
<hr>

![version]
![Tested]
![autor]

<h2 align="center"> Script que te permite personalizar tu terminal con cursores y banners! </h2>

* _Uso de ZSH_
* _32 banners normales y 22 banners multicolor (54)_
* _Autocompletado de comandos_
* _Entrar a un directorio con solo escribir su nombre_
* _Traductor integrado_
* _Comandos extras integrados: anon, su (FakeRoot), myip_
* _Si lo instalas en Termux tendrás teclas extras ;)_
* _Soporte para Kali en Termux con proot-distro_


  
<hr>

# Mobile
<img src="https://i.ibb.co/2dNkJTz/mobile.jpg" alt="PREVIEW" align="center" width="300px" height="650px">
<img src="https://i.ibb.co/tXN7hCB/mobile2.jpg" alt="PREVIEW" align="center" width="300px" height="650px">

# Desktop
<img src="https://user-images.githubusercontent.com/55555800/94967642-ff7c5d00-04ee-11eb-84a0-93af42789e84.png" alt="PREVIEW" align="center">

# Install:
<br>

* _Primero instala este paquete básico_

```sh
  sudo apt install neofetch -y 
  (Si estás en Termux usa: pkg install -y neofetch)
```

* _Debes clonarlo en tu HOME de usuario normal para funcionar_

```sh
  git clone https://github.com/tony23x/Predator-Theme.git
```

* _Entra a la herramienta:_
```sh
  cd Predator-Theme
```
* _Ejecuta el instalador:_
```sh
   bash install.sh
   (Si usas KALI con proot-distro ejecuta: bash install-kali-proot.sh)
```
* _Ejecuta el script:_

```sh
    bash theme.sh
```
<hr></hr>

# Tips: 
* _Si no nota cambios al abrir otra sesión solo reinicie su PC o App_

* _Si en su distro no funciona translate-shell simplemente ejecute:_
<br>gawk -f <(curl -Ls git.io/translate) -- -shell</br>

<!-- MarkDown Links & Images -->
[version]: https://img.shields.io/badge/Versi%C3%B3n-BETA%3A%20%20V.5.0-red
[tested]: https://img.shields.io/badge/Probado-Kali%20Linux%20%7C%20Debian%20%7C%20Ubuntu%20%7C%20Parrot%20%7C%20LinuxMint%20%7C%20Termux%20%7C%20Userland-blue
[autor]: https://img.shields.io/badge/Author-%40Th3__Pr3d4t0r-green
