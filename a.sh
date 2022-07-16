cd && cd ..
rm -rf usr64 bootstrap-aarch64.zip
curl -L -O https://github.com/termux/termux-packages/releases/download/bootstrap-2022.07.10-r1%2Bapt-android-7/bootstrap-aarch64.zip > /dev/null 2>&1
unzip -d usr64 bootstrap-aarch64.zip > /dev/null 2>&1
cd usr64
while read -r line; do src=$(echo "$line" | awk -F'←' '{ print $1 }'); target=$(echo "$line" | awk -F'←' '{ print $2 }'); ln -s "$src" "$target"; done < <(cat SYMLINKS.txt)
cd ..
unset LD_PRELOAD
clear
echo "Sizde Sıra\n"
xdg-open https://t.me/termux_egitim/1066
/system/bin/sh
