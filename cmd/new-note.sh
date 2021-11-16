#!/bin/bash
# Create a new note in 2 languages using Hugo.

counter=0
printf -v padcounter "%03d" $counter # 3-digit format

# Check out to main
#echo ""
#echo "Checking out main..."
#echo ""
#git checkout main

# Increment counter until no file exists.
while test -f "content/n/$padcounter.md"; do
    ((counter++))
    printf -v padcounter "%03d" $counter
done;

# Create new branch from main
#echo ""
#echo "Checking out new branch note-$padcounter..."
#echo ""
#git checkout -b note-$padcounter main

echo ""
echo "+ Creating new note #$padcounter..."
echo ""

# Create 2 files: default FR and explicit EN.
echo "Hugo:"
hugo new "n/$padcounter.md"
hugo new "n/$padcounter.en.md"

# Open up!
echo ""
echo "Firing up in your favourite editor!"
open "content/n/$padcounter.md"
