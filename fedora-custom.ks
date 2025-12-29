# Configuration by Yaroslav Popkov (aka m929)
# This minimal configuration Fedora with Gnome Desktop 
# There is no gnome-classic-session in this configuration, which makes the system cleaner

%include base.ks

%packages
# Gnome desktop custom configuration

dconf
gdm
gnome-control-center
gnome-initial-setup
gnome-session-wayland-session
gnome-settings-daemon
gnome-shell
gnome-software
gnome-text-editor
gnome-tweaks
nautilus
polkit
ptyxis
ModemManager
NetworkManager-adsl
NetworkManager-openconnect-gnome
NetworkManager-openvpn-gnome
NetworkManager-ppp
NetworkManager-ssh-gnome
NetworkManager-vpnc-gnome
NetworkManager-wwan
PackageKit-command-not-found
PackageKit-gtk3-module
adobe-source-code-pro-fonts
avahi
baobab
decibels
fprintd-pam
glib-networking
glycin-thumbnailer
gnome-backgrounds
gnome-bluetooth
gnome-browser-connector
gnome-calculator
gnome-calendar
gnome-characters
gnome-clocks
gnome-color-manager
gnome-contacts
gnome-disk-utility
gnome-epub-thumbnailer
gnome-font-viewer
gnome-logs
gnome-remote-desktop
gnome-system-monitor
gnome-user-docs
gnome-user-share
gvfs-afc
gvfs-afp
gvfs-archive
gvfs-fuse
gvfs-goa
gvfs-gphoto2
gvfs-mtp
gvfs-smb
librsvg2
libsane-hpaio
localsearch
loupe
mesa-dri-drivers
mesa-libEGL
papers
papers-nautilus
rygel
sane-backends-drivers-scanners
showtime
simple-scan
snapshot
sushi
systemd-oomd-defaults
tinysparql
totem-video-thumbnailer
vte-profile
xdg-desktop-portal
xdg-desktop-portal-gnome
xdg-desktop-portal-gtk
xdg-user-dirs-gtk

# Added
aria2
wget
mc
git
firefox
fastfetch
unzip
unxz

# No need
-gnome-tour
-gstreamer1-plugin-openh264
%end

%include custom-repo.ks

%post
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys
%end
