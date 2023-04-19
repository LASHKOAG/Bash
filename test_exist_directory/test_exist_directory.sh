#!/bin/bash

DIRECTORY=/home/expert/ddd/test_exist_directory/test_dir_2
# DIRECTORY=./test_dir_2/
echo $DIRECTORY



# To check if a directory exists:
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."
  
  rm -rv $DIRECTORY
fi


# 
# 
# 
# To check if a directory does not exist:
# if [ ! -d "$DIRECTORY" ]; then
#   echo "$DIRECTORY does not exist."
# fi

exit 0
