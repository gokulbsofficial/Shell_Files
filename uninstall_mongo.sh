echo '````````````````````````````````````````````````````'
echo 'Mongo DB Uninstalling proccess started'
echo '````````````````````````````````````````````````````'

echo '````````````````````````````````````````````````````'
echo 'Stoping MongoDB => '
echo '````````````````````````````````````````````````````'

sudo service mongod stop

echo '````````````````````````````````````````````````````'
echo 'Removing Packages => '
echo '````````````````````````````````````````````````````'
sudo apt-get purge mongodb-org* -y

echo '````````````````````````````````````````````````````'
echo 'Removing Data Directories'
echo '````````````````````````````````````````````````````'
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb

echo '````````````````````````````````````````````````````'
echo 'Mongo DB Uninstalled successfully'
echo '````````````````````````````````````````````````````'
