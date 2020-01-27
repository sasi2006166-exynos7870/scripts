#bin!/bin/bash
echo  Made By @sasi2006166
echo "github.com/sasi2006166"  
echo "Thanks to me for doing this script" 

echo "Before Using this script you need packages.sh" 

echo "Select what LineageOS version do you want to build" 
echo "lineage-15.1       lineage-16.0       lineage-17.0" 

while   :
do
    read INPUT_STRING
    case $INPUT_STRING in
         lineage-15.1) 
            echo "Oreo Selected" ;
            mkdir lineage-15.1 ;
            cd lineage-15.1 ;
            repo init -u git://github.com/LineageOS/android.git -b lineage-15.1 ;
            repo sync $(($(nproc)+1))
             ;;

         lineage-16.0)
            echo "Pie Selected" ;
            mkdir lineage-16.0 ;
            cd lineage-16.0
            repo init -u git://github.com/LineageOS/android.git -b lineage-16.0 ;
            repo sync $(($(nproc)+1)) 
             ;;
             
         lineage-17.0)
            echo "Q Selected" ;
            mkdir lineage-17.0 ; 
            cd lineage-17.0 ; 
            repo init -u git://github.com/LineageOS/android.git -b lineage-17.0 ;
            repo sync $(($(nproc)+1))
             ;;
     
         *)
           echo "Sorry I can't understand, type again :)"
            ;;
  esac 
 done
           

echo "Sync Completed, Now Select One of Exynos7870 devices listed Below :)" 
echo "j7xelte       j7velte       on7xelte" 



while  : 
do 
   read INPUT_STRING
   case $INPUT_STRING in 
           j7xelte)
               echo "J7 2016 Selected" ;
               mkdir .repo/local_manifests/
               cd .repo/local_manifests
               wget https://github.com/sasi2006166-exynos7870/local_manifests/j7xelte.xml
               cd ../.. 
               echo "Good Now Will Sync Trees"
               repo sync -$(($(nproc)+1))
               ;;
           
           on7xelte)
               echo "J7 Prime Selected" ;
               mkdir .repo/local_manifests/
               cd .repo/local_manifests
               wget https://github.com/sasi2006166-exynos7870/local_manifests/on7xelte.xml
               cd ../.. 
               echo "Good Now Will Sync Trees"
               repo sync -$(($(nproc)+1))
               ;;

            j7velte)
               echo "J7 NXT Selected" ;
               mkdir .repo/local_manifests/
               cd .repo/local_manifests
               wget https://github.com/sasi2006166-exynos7870/local_manifests/j7velte.xml
               cd ../.. 
               echo "Good Now Will Sync Trees"
               repo sync -$(($(nproc)+1))
               ;;



   esac 
 done
echo "Everything is fine!"
echo "Now move to build.sh file"

