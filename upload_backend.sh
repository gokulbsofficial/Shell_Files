# !bin/sh

#`````````````````````````````````````````````````````````
# Started message
echo "Repo Upload Process Started..."

# Commit a current changes
git add .
git commit -am "Server Update $(date)"

# Checkout server branch to master branch
git checkout master

# Merge server to master
git merge server

# Push changes in github
git push origin master

# Checkout master branch to server branch
git checkout server

# Finished message
echo "Repo Uploaded to Github"
#``````````````````````````````````````````````````````````````
