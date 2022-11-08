sudo apt update -y
sudo apt full-upgrade -y
sudo apt install -y ack antlr3 aria2 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev \
libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz \
mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip libpython3-dev qemu-utils \
rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
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
