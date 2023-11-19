! 

mkdir book_ex_early_merge
cd book_ex_early_merge

git init -b main
echo hello > hello
echo The hello file on the main branch says:
cat hello

git add hello
git commit -m 'first commit on main'

git checkout -b alt
echo world >> hello
echo 'Yay!' >> hello

echo The hello file on the alt branch says:
cat hello

git commit -a -m 'first commit on alt branch'
git checkout main
git merge alt

echo The hello file on the main branch after the merge says:
cat hello

git log

echo This is from the example on page 131 of 'Version Control With Git'
echo A fast forward merge was done here to update the hello file
echo on main with the changes made in the alt branch. 
echo To me, this is conceptually the same as just having one file 
echo on one branch and commiting to it. You can commit any changes
echo that you want in a file and your new commit overwrites the 
echo file without necessarily retaining any of what was in the
echo file from the last commit. You can totally change the entire 
echo file or a speific line or lines within the file and the new
echo commit does not tell you that you have a merge conflict. 
echo The book says that a branch is just a pointer to a commit
echo at a certain point in time so this makes sense. Your new 
echo branch has just made a new commit to the same file after
echo the earlier commit and just like you can totally change 
echo a file without any conflicts, although you can still see
echo the diffs, on a given branch. The book example on page
echo 131 has three commits and there are actually two separate
echo states of the file in two places and not someone 
echo essentially just doing a new commit on a branch that simply
echo points to the last commit of the file on another branch. 
