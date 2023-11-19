These examples are based on pg. 131 "Version Control with Git" by Ponuthorai and Loeliger. The example on page 131 has been modified to:

1) Alter line 1 of the "hello" file so that the first line says something different in the main and alt branches after a single commit in each. This results in a fast forward merge where the "hello" file is completely overwritten on the main branch with the state of the file on the alt branch. 

2) Alter the "hello" file with additional lines in the alt branch that are not present in the main branch after a single commit in each branch. The result is a fast forward merge where the state of the "hello" file on the main branch is again the same as the state of the file on the alt branch. 

3) This example is the same as what is found on pg. 131 in the text with the addition of a graphical representation of the git log after the merge. There are three total commits across the two branches(two in main, one in alt) and two seprate states of the "hello" file on the main and alt branches rather than the alt branch pointing to a single commit on the main branch and then completely overwriting the "hello" file with a new commit. This results in a merge conflict rather than a successful fast forward merge.
