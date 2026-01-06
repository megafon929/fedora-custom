# Configuration by Yaroslav Popkov (aka m929)
# This minimal configuration Fedora with Gnome Desktop 
# There is no gnome-classic-session in this configuration, which makes the system cleaner

%include base.ks

%packages
# Gnome desktop custom configuration
@gnome-desktop
%end

%include custom-repo.ks
%include nvidia.ks

%post
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys
%end
