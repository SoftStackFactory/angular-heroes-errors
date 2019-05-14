#!/bin/bash
for BRANCH in `git branch -a --list|sed 's/\*//g'`;
  do 
    git checkout $BRANCH
    git merge master
   
  done
git checkout master;