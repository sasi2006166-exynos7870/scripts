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
            cd $(pwd)/lineage-15_1/
	    bs_dir=$(pwd)
	    echo -e "\n\nSyncing....\n\n======\n"
            repo init -u git://github.com/LineageOS/android.git -b lineage-15.1
            repo sync -j$(($(nproc)+1))
	    echo -e "\n======\n"
	    break
             ;;

         2)

            echo -e "\nPie Selected\n\nmaking dir...\n"
            mkdir lineage-16_0
            cd $(pwd)/lineage-16_0
	    bs_dir1=$(pwd)
	    echo -e "\n\nSyncing....\n\n======\n"
            repo init -u git://github.com/LineageOS/android.git -b lineage-16.0
            repo sync -j$(($(nproc)+1))
	    echo -e "\n======\n"
	    break
             ;;

         3)
            echo "\nQ Selected\n\nmaking dir...\n"
            mkdir lineage-17_0
            cd $(pwd)/lineage-17_0
	    echo "current dir $(pwd)"
	    bs_dir2=$(pwd)
	    echo -e "\n\nSyncing....\n\n======\n"
            repo init -u git://github.com/LineageOS/android.git -b lineage-17.0
            repo sync -j$(($(nproc)+1))
	    echo -e "\n======\n"
	    break
             ;;

         *)
           echo "Sorry I can't understand, type again :)"
            ;;
  esac
 done


echo -e "\n\nEverything is fine!"
echo "Now move to build.sh file"
