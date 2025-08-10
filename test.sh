#!/bin/bash
set -e

# Temp folder
DEMO_DIR=git_demo_sre
rm -rf $DEMO_DIR
mkdir $DEMO_DIR
cd $DEMO_DIR

echo "=== Step 1: Init repo & main branch commit ==="
git init
echo "line1: base config" > config.txt
git add .
git commit -m "Initial commit on main"

# Feature branch
git checkout -b feature
echo "line2: feature work" >> config.txt
git add .
git commit -m "Add feature work"

# Back to main and make change
git checkout main
echo "line3: main branch update" >> config.txt
git add .
git commit -m "Update main branch"

echo
echo "=== Step 2: Merge example ==="
git checkout feature
git merge main --no-edit

echo
echo "=== Merge log ==="
git log --oneline --graph --all

echo
echo "=== Step 3: Rebase example ==="
cd ..
rm -rf $DEMO_DIR
mkdir $DEMO_DIR
cd $DEMO_DIR

git init
echo "line1: base config" > config.txt
git add .
git commit -m "Initial commit on main"

git checkout -b feature
echo "line2: feature work" >> config.txt
git add .
git commit -m "Add feature work"

git checkout main
echo "line3: main branch update" >> config.txt
git add .
git commit -m "Update main branch"

git checkout feature
git rebase main

echo
echo "=== Rebase log ==="
git log --oneline --graph --all

