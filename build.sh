#!/bin/bash
rm -f auto.ks
rm -r result 
ksflatten -c base/fedora-gnome-default.ks -o auto.ks -v f43
livemedia-creator --make-iso --ks auto.ks --no-virt --iso-only --iso-name Fedora-Gnome-Live-x86_64.iso --volid Fedora --releasever 43 --resultdir ./result --nomacboot --project "Fedora custom"

