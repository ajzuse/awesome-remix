%include spin-kickstarts/fedora-live-base.ks
%include spin-kickstarts/fedora-live-minimization.ks

%include awesome-fedora-remix-base.ks

%post
# rebrand
sed -i -e ‘s/Generic release/Awesome Fedora Remix/g’ /etc/fedora-release /etc/issue

cat > /etc/sysconfig/desktop <<EOF
PREFERRED=/usr/bin/awesome
DISPLAYMANAGER=/usr/sbin/lxdm
EOF

cat >> /etc/rc.d/init.d/livesys << EOF
# set up auto-login for liveuser
sed -i 's|# autologin=dgod|autologin=liveuser|g' /etc/lxdm/lxdm.conf

# Show harddisk install on the desktop
sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop
mkdir /home/liveuser/Desktop
cp /usr/share/applications/liveinst.desktop /home/liveuser/Desktop

chown -R liveuser:liveuser /home/liveuser
restorecon -R /home/liveuser
EOF
%end
