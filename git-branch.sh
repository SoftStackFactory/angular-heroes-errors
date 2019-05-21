#!/bin/bash

# git merge or rebase all branches --a for all 
# for BRANCH in `git branch  --list|sed 's/\*//g'`;
#   do 
#   echo ${BRANCH}
#     #git checkout $BRANCH
#     #git merge master
   
#   done
# git checkout master;

# pulls all remote branches and creates local
for b in `git branch -r | grep -v -- '->'`;
  do 
    git branch --track ${b##origin/} $b; 
  done