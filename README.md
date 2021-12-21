# Ubuntu

## Index
* [Clean Up Ubuntu](https://github.com/almaduri/ubuntu#clean-up-ubuntu)
* [Gnome Shell Extensions](https://github.com/almaduri/ubuntu#gnome-shell-extensions)
* [XAMPP](https://github.com/almaduri/ubuntu#xampp)
* [Unmount Removable Media](https://github.com/almaduri/ubuntu#unmount-removable-media)

## Clean Up Ubuntu

```BASH
dpkg -l
```

```BASH
sudo apt-get autoremove
```

```BASH
sudo apt-get autoclean
```

```BASH
df -h
```

```BASH
sudo du -sh /usr/share/applications
```

```BASH
sudo du -sh /var/cache/apt/
```

```BASH
sudo apt-get clean
```

```BASH
sudo journalctl --disk-usage
```

```BASH
sudo journalctl --rotate
```

```BASH
sudo journalctl --vacuum-size=100M
```

```BASH
du -sh /var/lib/snapd/snaps
```

```BASH
du -sh .cache/thumbnails/
```

```BASH
rm -rf .cache/thumbnails/*
```

## Gnome Shell Extensions

```BASH
sudo apt install gnome-shell-extension-no-annoyance
```

```BASH
sudo apt install gnome-shell-extension-pixelsaver
```

```BASH
sudo apt install gnome-shell-extension-no-annoyance gnome-shell-extension-pixelsaver
```

## XAMPP

```BASH
sudo /opt/lampp/lampp start
```

```BASH
sudo /opt/lampp/lampp stop
```

```BASH
sudo /opt/lampp/manager-linux-x64.run
```

```BASH
google-chrome --profile-directory="Profile 1" --incognito --force-dark-mode
```

## Unmount Removable Media

```BASH
sudo umount /dev/sdc1 && notify-send -u critical -i media-removable "Removable Media" "Successfully Unmounted"
```