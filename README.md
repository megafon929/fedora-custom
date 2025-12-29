# fedora-custom
Неофициальный образ Fedora Linux с включённым rpmfusion
Образ на русском языке

# Как создать свой образ
1) Установить в Fedora через dnf пакеты lorax-lmc-novirt и pykickstart
'dnf install lorax-lmc-novirt pykickstart'
2) Сделать копью репозитория
'git clone https://github.com/megafon929'
3) Из-под root (или sudo) запустить сборку
'# sh build.sh'
4) Забрать готовый ISO файл в папке result
