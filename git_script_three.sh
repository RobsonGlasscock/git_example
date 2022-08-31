#!/bin/bash

##########################
# file1 originally said from master:
# file901

# and then a second line was from devel was added to say:
# add line to file1 with first commit on devel
# but note that the first line still said file901 

# So at this point file1 said on devel:
# file901
# add line to file1 with first commit on devel 

# and then a second line was added from master to say:
# add a line to file1 with with second commit on master

# So at this point file1 said on master:
# file901
# add a line to file1 with second comit on master

# The second line in the file results in the merge conflict. 
############################

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

# Add to file1 on devel branch 
git checkout -b devel 
cat file1 
echo add a line to file1 with first commit on devel  >> file1
git add file1
git commit -m "devel branch version of file1"
cat file1

# Switch to master and make changes to file1
git checkout master
cat file1
echo add a line to file1 with second commit on master  >> file1
cat file1 
git add file1
git commit -m "second commit to file1 in master branch" 

# Switch back to master and merge  
git merge devel 
cat file1 

# For detail on Fast-forward vs. merging see below link: 
# https://stackoverflow.com/questions/47995200/merge-conflict-in-git-parallel-branches
