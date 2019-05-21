#!/bin/bash


function pullBranches(){
    for b in `git branch -r | grep -v -- '->'`;
        do 
            git branch --track ${b##origin/} $b; 
        done
}


function updateBranches () {
    for BRANCH in `git branch  --list|sed 's/\*//g'`;
      do 
        git checkout $BRANCH
        git rebase -Xtheirs master
           
       done
       git checkout master;
}

   
