# Ubuntu

```BASH
sudo /opt/lampp/manager-linux-x64.run
```
dpkg -l
sudo apt-get autoremove
sudo apt-get autoclean
df -h
sudo /opt/lampp/manager-linux-x64.run
sudo du -sh /usr/share/applications
sudo du -sh /var/cache/apt/
sudo apt-get clean
sudo journalctl --disk-usage
sudo journalctl --rotate
sudo journalctl --vacuum-size=1M
du -sh /var/lib/snapd/snaps
du -sh .cache/thumbnails/
rm -rf .cache/thumbnails/*
sudo apt install gnome-shell-extension-no-annoyance
sudo apt install gnome-shell-extension-pixelsaver
sudo apt install gnome-shell-extension-no-annoyance gnome-shell-extension-pixelsaver
sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp stop
google-chrome --profile-directory="Profile 1" --incognito --force-dark-mode