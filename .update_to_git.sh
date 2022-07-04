#! /bin/sh

KWIKNKLEEN_BACKEND='KwikNKleen_Backend';
KWIKNKLEEN_BACKEND_DEV='Kwiknkleen_Backend_prod';
KWIKNKLEEN='/home/gokulsreejith/Desktop/KwikNKleen' 
MOVABLE_FILES_AND_FOLDERS='env-example.txt README.md yarn.lock package.json src public tsconfig.json';
GITHUB_KEY_PATH='/home/gokulsreejith/.ssh/github';

# Delete Old files and folders dev repo
cd $KWIKNKLEEN/$KWIKNKLEEN_BACKEND_DEV
rm -rf $MOVABLE_FILES_AND_FOLDERS;

# Go to main repo
cd $KWIKNKLEEN/$KWIKNKLEEN_BACKEND

# Copy to all files and folders to dev repo
cp -r $MOVABLE_FILES_AND_FOLDERS $KWIKNKLEEN/$KWIKNKLEEN_BACKEND_DEV;

# Go to dev repo
cd $KWIKNKLEEN/$KWIKNKLEEN_BACKEND_DEV

# Install latest dependency
yarn install;

#Remove dist folder from dev repo
rm -rf dist/;

# Build a  code
yarn run build;

# Add to git
git add .;

# Commit
git commit -am "Kwiknkleen Updated";

# Add ssh-key
ssh-add $GITHUB_KEY_PATH;

# Push to server
git push github master;

echo 'Finished';
