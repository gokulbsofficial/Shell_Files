# !bin/sh

#``````````````````````````````````````````````````````````````
# Started Message
echo "Auto Deploying Process Started... 🟢"

# Go to repo folder
cd /home/easydeel/easydeel_frontend/

# Pull new commit from github
git pull origin master

# Install npm package 
npm install

# Build a code for deploy
npm run build

# Go to 'public_html' folder
cd /home/easydeel/public_html/

# remove 'assets' folder
rm -rf assets

# Go to build folder 
cd /home/easydeel/easydeel_frontend/dist/easydeel-adminpanel/

# Copy all files and folders to 'public_html' folder
yes | cp -R * /home/easydeel/public_html/

# Finished Message
echo "Auto Deploying Process Finished!! 🟢"
#`````````````````````````````````````````````````````````````````
