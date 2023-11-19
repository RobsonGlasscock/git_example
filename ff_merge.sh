! mkdir ff_merge
cd ff_merge

git init -b main

echo hello > hello
git add hello
echo The hello file on the main branch says: 
cat hello
git commit -m 'initial commit'

git checkout -b alt
echo hello_alt > hello
echo The hello file on the alt branch says:
cat hello
git add hello
git commit -m 'initial commit on alt' 

git checkout main
git merge alt 

echo The hello file on the main branch after the merge says:
cat hello

echo This example changes line 1 in the same file on two branches. 
echo You can see here that this is a fast forward merge. 
echo The changes on the main branch have been completely overwritten. 
echo I was expecting a merge conflict but a fast forward merge was done. 
echo This is based on the example on page 131 "Version Control With Git"
