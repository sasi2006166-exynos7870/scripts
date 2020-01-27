#bin!/bin/bash
echo  Made By @sasi2006166
echo "github.com/sasi2006166" ; 
echo "Do you want to install those packages?" ;
echo "Type yes or no";

while : 
do 
   read INPUT_STRING
   case $INPUT_STRING in
         yes) 
           echo "Good Choice" ;
           sudo apt-get remove openjdk-* icedtea-* ; sudo apt-get update ; sudo apt-get install -y liblz4-tool android-tools-adb bc bison libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32z1-dev libesd0-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop m4 python-networkx python-pip python-dev bzip2 libbz2-dev libghc-bzlib-dev pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev git screen ccache selinux x11proto-core-dev libx11-dev optipng libc6-dev-i386 git-core python libgl1-mesa-dev openjdk-9-jre-headless openjdk-9-jdk-headless repo 
                    break
                   ;; 
         no)
           echo "Okay Bye"
           break 
            ;;
       

          *) 
            echo "Sorry, I cannot understand"
            ;;
  
   esac
 done
echo "Thanks for using my script :D" ;
echo "Script Ended" 

