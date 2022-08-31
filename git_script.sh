#!/bin/bash

####################################################
# Big picture: file1 contains completely different lines. In one version from master, it says:
# fil901
# file901_second_commit

# and in the second version from devel it says: 
# file701
# file701_second_commit. 

# both lines in the file trigger merge conflicts. 
#################################################

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
echo file701 > file1 
git add file1
git commit -m "devel branch version of file1"
cat file1

# Switch to master and make changes to file1
git checkout master
echo file901_second_commit >> file1
cat file1 
git add file1
git commit -m "second commit to file1 in master branch" 

# Switch to devel and make changes to file1 
git checkout devel 
echo file701_second_commit >>file1 
cat file1 
git add file1 
git commit -m "second commit to file1 in devel branch"

# Switch back to master and merge 
git checkout master 
git merge devel 
cat file1 

# For detail on Fast-forward vs. merging see below link: 
# https://stackoverflow.com/questions/47995200/merge-conflict-in-git-parallel-branches
