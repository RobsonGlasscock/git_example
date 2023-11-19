! 

mkdir book_ex_merge
cd book_ex_merge

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
echo Change second line of hello file to say worlds pluarl
echo worlds >> hello
echo 'Yay!' >> hello

echo The hello file on the main branch now says:
cat hello

git commit -a -m 'second commit on main branch'
git merge alt

git diff

echo This is from the example on page 131 of 'Version Control With Git'
echo You can see that now there are merge conflicts because we have
echo three total commits and two versions of the hello file.

git log --graph --decorate --pretty=oneline --abbrev-commit

git show-branch
echo Because of the merge conflict you only see results for the main branch on the graph.  

echo change the hello file in main and repeat the merge
touch hello
echo hello > hello
echo world >> hello
echo 'Yay!' >> hello 

echo The hello file on main now says:
cat hello 

git commit -a -m 'Change hello file on main to mirror hello file on alt'
git merge alt

git show-branch
git log --graph --decorate --pretty=oneline --abbrev-commit

echo For the above graph, follow the asterisks. The first two commits on main are on
echo the left and are stacked vertically. Then there is an asterisk for the alt branch. 
echo I was originally looking at the first diagonal line going to the second
echo commit on main and thinking that was saying the branching was there 
echo and it confused me. Follow the asterisks. If you read it from top down
echo and then look at how alt lines up with main you can see that alt
echo goes back to the first commit on main and skips the second commit on main
