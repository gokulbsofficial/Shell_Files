# !bin/sh

#``````````````````````````````````````````````````````````````
# Started Message
echo "Auto Deploying Process Started..."

# Go to repo folder
cd /home/easydeel/easydeel_backend/

# Pull new commit from github
git pull origin master

# Install npm package 
npm install

# Reload PM2 
pm2 restart backend.easydeel.in

# Finished Message
echo "Auto Deploying Process Finished!!!"
#`````````````````````````````````````````````````````````````````
