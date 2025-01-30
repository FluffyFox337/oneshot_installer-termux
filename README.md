## [OneShot](https://github.com/eda-abec/OneShot-Termux) installer for [Termux](https://termux.com/)
### Setup
```
pkg install -y wget
wget https://raw.githubusercontent.com/FluffyFox337/oneshot_installer-termux/refs/heads/master/installer.sh
bash installer.sh
```
### Run
Disable Wi-Fi in the system settings and run:
```
sudo python oneshot.py -i wlan0 -K
```
