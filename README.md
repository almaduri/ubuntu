# Ubuntu

## Index
* [Clean Up Ubuntu](https://github.com/almaduri/ubuntu#clean-up-ubuntu)
  * [Disk Free](https://github.com/almaduri/ubuntu#disk-free)
  * [Package](https://github.com/almaduri/ubuntu#package)
  * [Cache](https://github.com/almaduri/ubuntu#cache)
  * [Journal](https://github.com/almaduri/ubuntu#journal)
  * [Snaps](https://github.com/almaduri/ubuntu#snaps)
  * [Thumbnails](https://github.com/almaduri/ubuntu#thumbnails)
  * [Syslog](https://github.com/almaduri/ubuntu#syslog)
* [Gnome Shell Extensions](https://github.com/almaduri/ubuntu#gnome-shell-extensions)
* [XAMPP](https://github.com/almaduri/ubuntu#xampp)
* [Custom Shortcuts](https://github.com/almaduri/ubuntu#custom-shortcuts)
  * [Firefox](https://github.com/almaduri/ubuntu#firefox)
  * [Google Chrome & Force Dark Mode](https://github.com/almaduri/ubuntu#google-chrome)
* [Unmount Removable Media](https://github.com/almaduri/ubuntu#unmount-removable-media)

## Clean Up Ubuntu

### Disk Free

```BASH
df -h
```

### Package

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
sudo du -sh /usr/share/applications
```

### Cache

```BASH
sudo du -sh /var/cache/apt/
```

```BASH
sudo apt-get clean
```

### Journal

```BASH
sudo journalctl --disk-usage
```

```BASH
sudo journalctl --rotate
```

```BASH
sudo journalctl --vacuum-size=10M
```

### Snaps

```BASH
du -sh /var/lib/snapd/snaps
```

### Thumbnails

```BASH
du -sh .cache/thumbnails/
```

```BASH
rm -rf .cache/thumbnails/*
```

### Syslog

```BASH
echo "" > /var/log/kern.log
```

```BASH
echo "" > /var/log/syslog
```

```BASH
service syslog restart
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

## Custom Shortcuts

### Firefox

```BASH
firefox
```

#### Firefox Private

```BASH
firefox --private-window
```

### Google Chrome & Force Dark Mode

```BASH
google-chrome --profile-directory="Default" --force-dark-mode
```

#### Google Chrome Incognito & Force Dark Mode

```BASH
google-chrome --profile-directory="Default" --incognito --force-dark-mode
```

```BASH
google-chrome --profile-directory="Profile 1" --incognito --force-dark-mode
```

## Unmount Removable Media

```BASH
sudo umount /dev/sdc1 && notify-send -u critical -i media-removable "Removable Media" "Successfully Unmounted"
```