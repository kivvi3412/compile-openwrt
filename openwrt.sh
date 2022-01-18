sudo apt update -y && sudo apt upgrade -y 
sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3.5 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf
sudo apt autoremove -y && sudo apt autoclean -y
mkdir ~/OpenWrt
mkdir ~/OpenWrt/result/
cd ~/OpenWrt
git clone https://github.com/coolsnowwolf/lede
cd lede
echo "src-git packages https://github.com/coolsnowwolf/packages
src-git luci https://github.com/coolsnowwolf/luci
src-git routing https://git.openwrt.org/feed/routing.git
src-git telephony https://git.openwrt.org/feed/telephony.git
src-git freifunk https://github.com/freifunk/openwrt-packages.git
src-git helloworld https://github.com/fw876/helloworld
src-git kenzo https://github.com/kenzok8/openwrt-packages.git
src-git small https://github.com/kenzok8/small" > feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
make -j8 download V=s && make -j8 download V=s && make -j8 download V=s && make -j1 V=s
mv bin/targets/* ~/OpenWrt/result/
echo "\033[43;31mSave to ~/OpenWrt/ \033[0m"
