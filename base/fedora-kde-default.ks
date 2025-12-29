# Configuration by Yaroslav Popkov (aka m929)

%include base.ks

%packages
# KDE desktop custom configuration
@kde-desktop
%end

%include custom-repo.ks

%post
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys
%end
