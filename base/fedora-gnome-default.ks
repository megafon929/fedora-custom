# Configuration by Yaroslav Popkov (aka m929)

%include base.ks

%packages
# Gnome desktop custom configuration
@gnome-desktop
gnome-tweaks
%end

%include custom-repo.ks

%post
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys
%end
