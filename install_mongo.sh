echo '````````````````````````````````````````````````````````````````````````````'
echo 'Mongo Installation in Ubuntu'
echo '````````````````````````````````````````````````````````````````````````````'

echo '````````````````````````````````````````````````````````````````````````````'
echo 'Importing the public key used by the package management system => '
echo '````````````````````````````````````````````````````````````````````````````'

wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

echo '````````````````````````````````````````````````````````````````````````````'
echo 'Creating a list file for MongoDB => '
echo '````````````````````````````````````````````````````````````````````````````'

#ubuntu
#echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

#debian
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

echo '````````````````````````````````````````````````````````````````````````````'
echo 'Reloading local package database => '
echo '````````````````````````````````````````````````````````````````````````````'

sudo apt-get update -y

echo '````````````````````````````````````````````````````````````````````````````'
echo 'Installing the MongoDB packages => '
echo '````````````````````````````````````````````````````````````````````````````'
sudo apt-get install -y mongodb-org

echo '````````````````````````````````````````````````````````````````````````````'
echo 'Starting MongoDB'
echo '````````````````````````````````````````````````````````````````````````````'

sudo systemctl start mongod

sudo systemctl enable mongod

echo '````````````````````````````````````````````````````````````````````````````'

echo 'Mongo Service Status'
echo '````````````````````````````````````````````````````````````````````````````'

echo 'Mongo Installation Finished'
