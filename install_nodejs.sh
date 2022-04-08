
echo 'Nodejs installation started!!'

echo 'Refreshing your local package'
sudo apt update -y

echo 'Installing Node.js package'
sudo apt install nodejs -y

echo 'Node version number'
node -v

echo 'Installing the npm package'
sudo apt install npm -y

echo 'Npm version number'
npm -v

echo 'Installing the yarn package'
sudo npm install --global yarn -y

echo 'Yarn version number'
yarn -v

echo 'Nodejs, Npm and Yarn packages is Installed successfully'
