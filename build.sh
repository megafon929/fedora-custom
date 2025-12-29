#!/bin/bash
setenforce 0
rm -f auto.ks
rm -r result
echo "Доступны следующие вариант"
echo "1) fedora-kde-default"
echo "2) fedora-gnome-default"
echo "3) fedora-gnome-minimal"
echo "Выбирете конфиг: "
read variant
case $variant in
    1) echo "Выбран fedora-kde-default" 
       config=fedora-kde-default
       name=kde-default
       ;;
    2) echo "Выбран fedora-gnome-default"
       config=fedora-gnome-fefault
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

ksflatten -c base/$config.ks -o auto.ks -v f43
livemedia-creator --make-iso --ks auto.ks --no-virt --iso-only --iso-name fedora-$name-live-x86_64.iso --volid Fedora --releasever 43 --resultdir ./result --nomacboot --project "fedora-$name-live-43"
