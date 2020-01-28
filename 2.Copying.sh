#!/bin/bash
echo  "Made By @sasi2006166"
echo -e "github.com/sasi2006166\n"  
echo "Before Using this script you need packages.sh" 

echo "Select what LineageOS version do you want to build" 
echo " 1) lineage-15.1       2) lineage-16.0       3) lineage-17.0" 



while   :
do
    read INPUT_STRING
    case $INPUT_STRING in
         1) 
            echo -e "\nOreo Selected\n\nmaking dir...\n"
            mkdir lineage-15_1
            cd lineage-15_1/
	    bs_dir=$(pwd)
	    echo -e "\n\nSyncing....\n\n======\n"
            exec repo init -u git://github.com/LineageOS/android.git -b lineage-15.1
            exec repo sync $(($(nproc)+1))
	    echo -e "\n======\n"
	    break
             ;;

         2)
	    
            echo -e "\nPie Selected\n\nmaking dir...\n"
            mkdir lineage-16_0 
            cd $(pwd)/lineage-16_0
	    bs_dir1=$(pwd)
	    echo -e "\n\nSyncing....\n\n======\n"
            exec repo init -u git://github.com/LineageOS/android.git -b lineage-16.0 
            exec repo sync $(($(nproc)+1)) 
	    echo -e "\n======\n"
	    break
             ;;
             
         3)
            echo "\nQ Selected\n\nmaking dir...\n" 
            mkdir lineage-17_0  
            cd $(pwd)/lineage-17_0
	    bs_dir2=$(pwd)
	    echo -e "\n\nSyncing....\n\n======\n"
            exec repo init -u git://github.com/LineageOS/android.git -b lineage-17.0 
            exec repo sync $(($(nproc)+1))
	    echo -e "\n======\n"
	    break
             ;;
     
         *)
           echo "Sorry I can't understand, type again :)"
            ;;
  esac 
 done
           

echo -e "Sync Completed\n\n Now Select One of Exynos7870 devices listed Below :)" 
echo "1) j7xelte       2) j7velte       3) on7xelte" 



while  : 
do 
   read INPUT_STRING
   case $INPUT_STRING in 
           1)
               echo -e "\nJ7 2016 Selected\n\nmaking dir...\n"
               mkdir -p .repo/local_manifests/
               cd $(pwd)/.repo/local_manifests
	       echo -e "\ngetting manifests\n\n======\n"
               exec wget https://github.com/sasi2006166-exynos7870/local_manifests/j7xelte.xml
               cd $bs_dir 
               echo -e "\nSyncing...\n\n======\n"
               exec repo sync -$(($(nproc)+1))
	       echo -e "\n======\n"
	       break
               ;;
           
           2)
               echo -e "\nJ7 Prime Selected\n\nmaking dir...\n" ;
               mkdir -p .repo/local_manifests/
               cd $(pwd)/.repo/local_manifests
	       echo -e "\ngetting manifests\n\n======\n"
               exec wget https://github.com/sasi2006166-exynos7870/local_manifests/on7xelte.xml
               cd $bs_dir1
	       echo -e "Syncing....\n\n======\n"
               exec repo sync -$(($(nproc)+1))
	       echo -e "\n======\n"
	       break
               ;;

            3)
               echo "\nJ7 NXT Selected\n\nmaking dir...\n" ;
               mkdir -p .repo/local_manifests/
               cd $(pwd)/.repo/local_manifests
	       echo -e "\ngetting manifests\n\n======"
               exec wget https://github.com/sasi2006166-exynos7870/local_manifests/j7velte.xml
               cd $bs_dir2
	       echo -e "Syncing....\n\n======\n"
               exec repo sync -$(($(nproc)+1))
	       break
               ;;



   esac 
 done
echo -e "\n\nEverything is fine!"
echo "Now move to build.sh file"

