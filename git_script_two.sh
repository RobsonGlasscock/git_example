#!/bin/bash

#################################

# Big picture: file1 originally said from master:
# file901 

# and then a line was added on the devel branch to say:
# add a line to file1 

# There were no merge conflicts with this. File1 ultimatlte says:
# file901
# add a line to file1

# after the merge.
#######################

# Make a new directory 
mkdir git_example 
cd git_example 

# Initialize a git repo
git init

# set up git identify to avoid error messages
git config --global user.email "rob@gmail.com" 
git config --global user.name "rob"

# Create file1 on master branch
echo file901 > file1
git add file1
git commit -m "master branch version of file1" 
cat file1

# Create file1 on devel branch 
git checkout -b devel 
cat file1
echo add a line to file1 >> file1 
git add file1
git commit -m "devel branch version of file1"
cat file1

# Switch back to master and merge 
git checkout master 
git merge devel 
cat file1 

# For detail on Fast-forward vs. merging see below link: 
# https://stackoverflow.com/questions/47995200/merge-conflict-in-git-parallel-branches
