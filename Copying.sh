#bin!/bin/bash
echo  Made By @sasi2006166
echo "github.com/sasi2006166" ; 
echo "Thanks to me for doing this script" ; 

echo "Before Using this script you need packages.sh" ;

echo "Select what LineageOS version do you want to build" ; 
echo "lineage-15.1       lineage-16.0       lineage-17.0" ;

while   :
do
    read INPUT_STRING
    case $INPUT_STRING in
         lineage-15.1) 
            echo "Oreo Selected" ;
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
