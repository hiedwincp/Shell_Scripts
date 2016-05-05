

#-----------------------------------------------------------------------------------------------------------____--
# Title : replaceSpaceBy_.sh 
# Description : Script to replace the space by Underscore(_) in the folder name and file name"
#-----------------------------------------------------------------------------------------------------------____--
#/bin/bash

ls | while read folder; do
    #if [[ "$folder" == "Tipton, Joshua" ]]; then
    if [ -d "$folder" ]; then
    cd "$folder"
    echo "Processing all files under folder : " $PWD
    ls | while read file; do
        new_name=`echo $file | sed -r 's/\s+/_/g'`
        #echo "old name: "$file
        #echo "new name: "$new_name
        mv -f "$file" "$new_name" > /dev/null 2>&1
    done
    cd ..
    fi
    #fi
done

ls | while read folder; do
      echo "Processing base folder : " $PWD
      new_name=`echo $folder | sed -r 's/\s+/_/g'`
      echo "old name: "$folder  " new name: "$new_name
      mv -f "$folder" "$new_name" > /dev/null 2>&1   
done
