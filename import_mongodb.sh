# !/bin/sh

# Base Path of the import_mongodb.sh
BASE_BACKUP_PATH="$PWD";

# Database name for import
DATABASE_NAME="easydeel_new";

# Folder name for import
BACKUP_FOLDER_NAME="easydeel_new@{Created Date and Time}";

#``````````````````````````````````````````````
# IMPORT DATABASE CMD 
#
#``````````````````````````````````````````````

# Import mongodb from $BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME location
mongorestore -d "$DATABASE_NAME" --gzip  --dir "$BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME";

# Syntax for import or restore --> "mongorestore -d <database_name> --gzip --dir <backup_folder_path>"

echo "\n----------------------------------------------------------\n";

echo "--> In Mongo ($DATABASE_NAME) database is imported from $BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME";

echo "\n----------------------------------------------------------\n"
