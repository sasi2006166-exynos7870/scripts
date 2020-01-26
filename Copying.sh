echo  Made By @sasi2006166
echo " github.com/sasi2006166 "; 
echo " Thanks to me for doing this script" ; 
echo " Getting required Packages for Building " ;

sudo apt-get remove openjdk-* icedtea-* ; sudo apt-get update ; sudo apt-get install -y liblz4-tool android-tools-adb bc bison libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32z1-dev libesd0-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop m4 python-networkx python-pip python-dev bzip2 libbz2-dev libghc-bzlib-dev pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev git screen ccache selinux x11proto-core-dev libx11-dev optipng libc6-dev-i386 git-core python libgl1-mesa-dev openjdk-9-jre-headless openjdk-9-jdk-headless ; mkdir -p ~/bin ; PATH=~/bin:$PATH ; wget 'https://storage.googleapis.com/git-repo-downloads/repo' -P ~/bin ; chmod +x ~/bin/repo ; mkdir lineage-16.0 ; cd lineage-16.0 ; repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-16.0 ; repo sync -c --force-sync --no-clone-bundle --optimized-fetch --prune --no-tags -j4 ; ccache -M 50G


