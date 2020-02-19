#!bin/#!/usr/bin/env bash
echo "This is copying script"
echo "Select One of listed versions"


echo "Select version"
echo "1) lineage-15.1 "
echo "2) lineage-16.0"
echo "3) lineage-17.0"

   while   :
   do
         read INPUT_STRING

              case $INPUT_STRING IN
                1)
                echo "Oreo selected"
                
