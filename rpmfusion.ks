repo --name="rpmfusion-free-release" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
repo --name="rpmfusion-free-release-tainted" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch
repo --name="rpmfusion-nonfree-release" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch
repo --name="rpmfusion-nonfree-release-tainted" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch

%packages
rpmfusion-free-release
rpmfusion-nonfree-release
ffmpeg-libs
%end

%post
dnf config-manager setopt fedora-cisco-openh264.enabled=0
flatpak remote-delete fedora

%end
