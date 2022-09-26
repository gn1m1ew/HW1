#!/bin/bash

# Define the filename
filename1='firstFile.txt'
filename2='secondFile.txt'

git init
# Type the text that you want to append
read -p "Enter the text that you want to append:" newtext

# Check the new text is empty or not
if [ "$newtext" != "" ]; then
      # Append the text by using '>>' symbol
      echo $newtext >> $filename1
fi
git add firstFile.txt
git commit -m "first commit"
git checkout -b "mingwei/hw1"
git checkout "mingwei/hw1"
# Type the text that you want to append
read -p "Enter the text that you want to append:" newtext2

# Check the new text is empty or not
if [ "$newtext" != "" ]; then
      # Append the text by using '>>' symbol
      echo $newtext2 >> $filename1
fi
git add firstFile.txt
git commit -m "branch hw1 commit"
git checkout master
# Type the text that you want to append
read -p "Enter the text that you want to append:" newtext3

# Check the new text is empty or not
if [ "$newtext" != "" ]; then
      # Append the text by using '>>' symbol
      echo $newtext3 >> $filename2
fi
git add secondFile.txt
git commit -m "branch main new work commit"
git merge "mingwei/hw1" -m "merge"
git log --graph
