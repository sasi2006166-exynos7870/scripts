#bin!/bin/bash
if [ $(whoami) != root ] 
	then
		echo "you must use sudo or be root to run this script"
		exit
fi

echo  Made By @sasi2006166
echo "Type your linux version"
echo "Ubuntu 19/20 MAYBE are not supported" 
echo "1) ubuntu-16.04 2) newer than 16.04 3) other"
echo "If your version is not listed type other"



while : 
do 
   read INPUT_STRING
   case $INPUT_STRING in
         1) 
           echo "Good Choice"
           apt-get remove openjdk-* icedtea-* ; apt-get update ; apt-get install -y liblz4-tool android-tools-adb bc bison libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32z1-dev libesd0-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop m4 python-networkx python-pip python-dev bzip2 libbz2-dev libghc-bzlib-dev pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev git screen ccache selinux x11proto-core-dev libx11-dev optipng libc6-dev-i386 git-core python libgl1-mesa-dev openjdk-9-jre-headless openjdk-9-jdk-headless repo 
                    break
                   ;; 
         
         2)
	   echo -e "\nAdding mirrors...\n"
	   echo -e "\n#16.04 AOSP packages\ndeb http://archive.ubuntu.com/ubuntu xenial main universe" >> /etc/apt/sources.list
	   echo -e "\nUpdating... \n\n"
	   apt-get update && apt-get upgrade
	   echo -e "\nInstalling packages...\n\n"
	   apt-get remove openjdk-* icedtea-* ; apt-get update ; apt-get install -y liblz4-tool android-tools-adb bc bison libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32z1-dev libesd0-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop m4 python-networkx python-pip python-dev bzip2 libbz2-dev libghc-bzlib-dev pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev git screen ccache selinux x11proto-core-dev libx11-dev optipng libc6-dev-i386 git-core python libgl1-mesa-dev openjdk-9-jre-headless openjdk-9-jdk-headless repo 
           break
             ;;

         3)
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


