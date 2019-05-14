#!/bin/bash
for BRANCH in `git branch -a --list|sed 's/\*//g'`;
  do 
    git checkout $BRANCH
    git fetch
    git branch --set-upstream-to=origin/$BRANCH $BRANCH
  done
git checkout master;