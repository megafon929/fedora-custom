# Configuration by Yaroslav Popkov (aka m929)

%include base.ks

%packages
# Gnome desktop custom configuration
@gnome-desktop
-gnome-classic-session
-gnome-boxes
-gnome-connections
%end

%include custom-repo.ks
%include nvidia.ks

%post
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys
%end
