#!/bin/bash
rm -f auto.ks
rm -r result
echo "Доступны следующие вариант"
echo "1) fedora-kde-default"
echo "2) fedora-gnome-default"
echo "3) fedora-gnome-minimal"
echo -n "Выбирете конфиг: "
read variant
case $variant in
    1) echo "Выбран fedora-kde-default" 
       config=fedora-kde-default
       name=kde-default
       ;;
    2) echo "Выбран fedora-gnome-default"
       config=fedora-gnome-default
       name=gnome-default
       ;;
    3) echo "Выбран fedora-gnome-minimal" 
       config=fedora-gnome-minimal
       name=gnome-minimal
       ;;
    *) echo "Неверно! Начинайте заново"
       exit 
       ;;
esac
echo "Нужны драйвера?"
echo "1) Да"
echo "2) Нет"
echo -n "Выбирете вариант: "
read variantn
case $variantn in
    1) echo "Выбран вариант с nvidia" 
       nvidia="akmod-nvidia xorg-x11-drv-nvidia-cuda"
       ;;
    2) echo "Выбран вариант без nvidia"
       ;;
    *) echo "Неверно! Начинайте заново"
       exit 
       ;;
esac
ksflatten -c base/$config.ks -o auto.ks -v f43
livemedia-creator --make-iso --ks auto.ks --no-virt --iso-only --iso-name $name-live-x86_64.iso --volid Fedora --releasever 43 --resultdir ./result --nomacboot --project "Fedora custom"
