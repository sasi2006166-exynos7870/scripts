#bin!/bin/bash
echo  Made By @sasi2006166
echo "Type your linux version";
echo "Ubuntu 19/20 MAYBE are not supported" ;
echo "ubuntu-16.04  ubuntu-18.04  ubuntu-19.X  ubuntu-20.X" ;
echo "If your version is not listed type other" ; 

while : 
do 
   read INPUT_STRING
   case $INPUT_STRING in
         ubuntu-16.04) 
           echo "Good Choice" ;
           sudo apt-get remove openjdk-* icedtea-* ; sudo apt-get update ; sudo apt-get install -y liblz4-tool android-tools-adb bc bison libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32z1-dev libesd0-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop m4 python-networkx python-pip python-dev bzip2 libbz2-dev libghc-bzlib-dev pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev git screen ccache selinux x11proto-core-dev libx11-dev optipng libc6-dev-i386 git-core python libgl1-mesa-dev openjdk-9-jre-headless openjdk-9-jdk-headless repo 
                    break
                   ;; 
         
          ubuntu-18.04)
           echo "Read howto.txt file, then re-do this script typing ubuntu-16.04"
           break
           ;;
       

         ubuntu-19.X) 
            echo "Read howto.txt file, then re-do this script typing ubuntu-16.04"
            break
            ;;

         ubuntu-20.X)
           echo "Read howto.txt file, then re-do this script typing ubuntu-16.04"
           break
             ;;

         other)
            echo "Read howto.txt file, but maybe your version isn't supported :( but give it a try :)"
              break 
                ;;

          *)
           echo "Sorry I cannot understand, please type again" 
             ;;
  
   esac
 done
echo "Thanks for using my script :D" 
echo "Now move to Copying.sh file"
echo "Script Ended" 

