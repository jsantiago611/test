#!/bin/bash
# Scaffold a new essay in 2 languages using Hugo.

counter=0
printf -v padcounter "%02d" $counter # 3-digit format

# Check out to main
#echo ""
#echo "Checking out main..."
#echo ""
#git checkout main

# Increment counter until no file exists.
while test -f "content/e/$padcounter.md"; do
    ((counter++))
    printf -v padcounter "%02d" $counter
done;

# Create new branch from main
echo ""
echo "Checking out new branch essay-$padcounter..."
echo ""
git checkout -b essay-$padcounter main

echo ""
echo "+ Creating new essay #$padcounter..."
echo ""

# Create 2 files: default FR and explicit EN.
echo "Hugo:"
hugo new "e/$padcounter.md"
hugo new "e/$padcounter.en.md"

# Open up!
echo ""
echo "Firing up in your favourite editor!"
open "content/e/$padcounter.md"
