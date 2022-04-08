echo 'Removing Nodejs and Npm'
sudo apt-get remove nodejs npm node -y
sudo apt-get purge nodejs -y

echo 'Removing .node and .npm folders from your system'

sudo rm -rf /usr/local/bin/npm 
sudo rm -rf /usr/local/share/man/man1/node* 
sudo rm -rf /usr/local/lib/dtrace/node.d 
sudo rm -rf ~/.npm 
sudo rm -rf ~/.node-gyp 
sudo rm -rf /opt/local/bin/node 
sudo rm -rf opt/local/include/node 
sudo rm -rf /opt/local/lib/node_modules  

sudo rm -rf /usr/local/lib/node*
sudo rm -rf /usr/local/include/node*
sudo rm -rf /usr/local/bin/node*

echo 'Check node exists'
node -v

echo 'Check npm exists'
npm -v

echo 'Nodejs Uninstalled successfully'
