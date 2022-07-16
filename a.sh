cd && cd ..
rm -rf usr64 bootstrap-aarch64.zip
clear
echo "Yükleniyor..."
sleep 0.5
curl -L -O https://github.com/termux/termux-packages/releases/download/bootstrap-2022.07.10-r1%2Bapt-android-7/bootstrap-aarch64.zip > /dev/null 2>&1
clear
echo "Çıkartılıyor..."
sleep 0.5
unzip -d usr64 bootstrap-aarch64.zip > /dev/null 2>&1
cd usr64
clear
echo "Derleniyor..."
sleep 0.5
while read -r line; do src=$(echo "$line" | awk -F'←' '{ print $1 }'); target=$(echo "$line" | awk -F'←' '{ print $2 }'); ln -s "$src" "$target"; done < <(cat SYMLINKS.txt)
cd ..
unset LD_PRELOAD
clear
echo "Sizde Sıra"
sleep 2
clear
xdg-open https://t.me/termux_egitim/1066
/system/bin/sh
