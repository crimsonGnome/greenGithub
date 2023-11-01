#!/bin/bash


# variables 
updateTextFile="randomNumber.txt"
commitMessage="updating log"
$branch="main"

echo "running Crimson Github script" 




echo "running update script" 
sed "s/[0-9]\+/$RANDOM/" $updateTextFile

echo "git add"
git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

echo 'Enter the name of the branch:'
read branch

git push origin $branch
read

