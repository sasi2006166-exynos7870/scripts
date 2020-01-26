#bin!/bin/bash
echo  Made By @sasi2006166
echo "github.com/sasi2006166" ; 
echo "Thanks to me for doing this script" ; 
echo "Getting required Packages for Building" ;

sudo apt-get remove openjdk-* icedtea-* ; sudo apt-get update ; sudo apt-get install -y liblz4-tool android-tools-adb bc bison libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32z1-dev libesd0-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop m4 python-networkx python-pip python-dev bzip2 libbz2-dev libghc-bzlib-dev pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev git screen ccache selinux x11proto-core-dev libx11-dev optipng libc6-dev-i386 git-core python libgl1-mesa-dev openjdk-9-jre-headless openjdk-9-jdk-headless repo ;


echo "Packages Install Complete, Now select what LineageOS version do you want to build" ; 
echo "lineage-15.1       lineage-16.0       lineage-17.0" ;

while   :
do
    read INPUT_STRING
    case $INPUT_STRING in
         lineage-15.1) 
            echo " Oreo Selected" ;
            mkdir lineage-15.1 ;
            cd lineage-15.1 ;
            repo init -u git://github.com/LineageOS/android.git -b lineage-15.1 ;
            repo sync 
             ;;


echo "Sync Completed, Now Select One of Exynos7870 devices listed Below :)" ;
echo "j7xelte       j7velte       on7xelte" ;



while  : 
do 
   read INPUT_STRING
   case $INPUT_STRING in 
           j7xelte)
               echo "Great is also my device" ;
               mkdir .repo/local_manifests/
               cd .repo/local_manifests
               wget https://github.com/sasi2006166-exynos7870/local_manifests/j7xelte.xml
               cd ../.. 
               echo "Good Now Will Sync Trees"
               repo sync -j4
