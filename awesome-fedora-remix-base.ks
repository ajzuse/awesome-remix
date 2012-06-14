repo --name=awesome --baseurl=http://repos.fedorapeople.org/repos/thm/awesome/fedora-$releasever/$basearch/

%packages
# desktop
awesome
xcompmgr
conky

# dm
lxdm

# net
firefox
pidgin
irssi

# audio & video
pavucontrol

# terminal utils
wget
curl
screen
irssi
vim-enhanced
bash-completion
rxvt-unicode

# power
acpid
upower
powertop

# rebrand
-fedora-logos
-fedora-release
-fedora-release-notes
generic-release
generic-logos
generic-release-notes

# removed to save some space
-yp-tools
-ypbind
-preupgrade
-xfwm4
%end
