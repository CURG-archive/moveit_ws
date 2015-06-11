#!/bin/bash

# This script removes the directories from the remote repository and adds them as git submodules in the correct branch.

FILES=/home/mpcadosch/Dev/bci_ros/moveit_ws/src/*

# Staring in /home/mpcadosch/Dev/bci_ros/moveit_ws/
for f in $FILES
do 
  if [ -d "$f" ] 
    then
      # cd into directory to get variable names
      cd $f
      echo $f
      DIR_NAME=${PWD##*/}
      echo $DIR_NAME
      #REPO_URL="$(git config --get remote.origin.url)"
      #echo $REPO_URL
      #BRANCH="$(git branch)"
      echo $BRANCH
      cd ../..
      #git rm -rf --cached src/$DIR_NAME
      # add directory as submodule
      #git submodule add -f ${REPO_URL} src/$DIR_NAME -b $BRANCH
      cd $f
      echo $f
      # checkout correct branch
      #git checkout $BRANCH
      cd ../..
      echo $PWD
  fi
done
