# fedora-custom
Неофициальный образ Fedora Linux с включённым rpmfusion

Образ на русском языке

DE: Gnome

Браузер: Firefox

Установлены дополнительные пакеты: aria2, fastfetch, wget, git, unzip, unxz, ffmpeg-libs, unrar, gnome-tweaks

Репозиторий fedora-cisco-openh264 отключён по умолчанию 

# Как создать свой образ
1) Установить в Fedora через dnf пакеты lorax-lmc-novirt и pykickstart
 
`dnf install lorax-lmc-novirt pykickstart`

2) Сделать копию репозитория

`git clone https://github.com/megafon929/fedora-custom`

3) Из-под root (или sudo) запустить сборку

`# sh build.sh`

4) Забрать готовый ISO файл в папке result
