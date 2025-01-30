#!/data/data/com.termux/files/usr/bin/bash
pkg update && pkg upgrade -y

architecture=""
case $(uname -m) in
    armv7*)   architecture="arm" ;;
    aarch64)   architecture="aarch64" ;;
    *)   printf "The architecture of your CPU is not supported. Please build required binaries from the sources: https://github.com/drygdryg/OneShot#termux"; exit
esac
pkg install -y root-repo 
pkg install -y wget tsu python wpa-supplicant iw openssl
pkg install -y termux-tools ncurses-utils

# keep upstream
wget https://github.com/FluffyFox337/oneshot_installer-termux/raw/refs/heads/master/binaries/$architecture/pixiewps -O $PREFIX/bin/pixiewps
chmod +x $PREFIX/bin/pixiewps

wget https://raw.githubusercontent.com/FluffyFox337/oneshot/refs/heads/master/oneshot.py
# keep upstream
wget https://raw.githubusercontent.com/FluffyFox337/oneshot/refs/heads/master/vulnwsc.txt
wget https://raw.githubusercontent.com/FluffyFox337/oneshot/refs/heads/master/pins.csv

chmod +x ./oneshot.py

printf "########################################\n# All done! Now you can run OneShot with\n#        sudo python oneshot.py\n########################################\n"
