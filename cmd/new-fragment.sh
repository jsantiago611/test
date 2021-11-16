#!/bin/bash
# Create a new fragment in 2 languages using Hugo.

counter=0
printf -v padcounter "%04d" $counter # 4-digit format

# Check out to main
#echo ""
#echo "Checking out main..."
#echo ""
#git checkout main

# Increment counter until no file exists.
while test -f "content/f/$padcounter.md"; do
    ((counter++))
    printf -v padcounter "%04d" $counter
done;

# Create new branch from main
#echo ""
#echo "Checking out new branch fragment-$padcounter..."
#echo ""
#git checkout -b fragment-$padcounter main

echo ""
echo "+ Creating new fragment #$padcounter..."
echo ""

# Create 2 files: default FR and explicit EN (always bilingual).
echo "Hugo:"
hugo new "f/$padcounter.md"
hugo new "f/$padcounter.en.md"

# Open up!
echo ""
echo "Firing up in your favourite editor!"
open "content/f/$padcounter.md"
#open "content/f/$padcounter.en.md"
