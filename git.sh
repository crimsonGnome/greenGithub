#!/bin/bash


# variables 
updateTextFile=randomNumber.txt
commitMessage="Another update... $RANDOM/"
$branch="main"

echo "running Crimson Github script" 
echo "git pulling" 
git pull

echo "running update script" 
sed -i "s/[0-9]\+/$RANDOM/" "randomNumber.txt"

echo "git add"
git add .

echo 'Enter the commit message:'

git commit -m "$commitMessage"

echo 'Enter the name of the branch:'

git push origin $branch

echo 'Successfully executed. Exiting...'
