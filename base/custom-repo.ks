repo --name="rpmfusion-free-release" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
repo --name="rpmfusion-nonfree-release" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch

%packages
rpmfusion-free-release
rpmfusion-nonfree-release
ffmpeg-libs
unrar
$nvidia
%end

%post
dnf config-manager setopt fedora-cisco-openh264.enabled=0
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
%end
