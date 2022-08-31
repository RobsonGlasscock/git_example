#!/bin/bash

##############################
# On master, file1 originally said:
# file901

# and then on devel, file1 was changed to say:
# file701

# after the fast forward merge, file1 says:
# file701

# and there is no merge conflict. This is similar to just completely overwriting a file without git. If there are no conflicting lines in the file, then there is no mege conflict. 
#############################

# Make a new directory 
mkdir git_example 
cd git_example 

# Initialize a git repo
git init

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

# Switch to master branch and merge 
git checkout master 
git merge devel 
cat file1 
# Merging at this point will not result in a merge conflict because of a "fast-forward" which makes file1 contain "file701"


