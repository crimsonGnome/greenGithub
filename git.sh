#!/bin/bash


# variables 
updateTextFile=randomNumber.txt
commitMessage="Another update..."
$branch="main"

echo "running Crimson Github script" 


echo "running update script" 
sed "s/[0-9]\+/$RANDOM/" $updateTextFile
echo "updated file"

echo "git add"
git add .

echo 'Enter the commit message:'

git commit -m "$commitMessage"

echo 'Enter the name of the branch:'

git push origin $branch
read

