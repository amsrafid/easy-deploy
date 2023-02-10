#!/bin/bash

clear

server="<Server Host>"
user="<Username>"
password="<Password>"
server_path="<Server path>"

read -p "Are you sure to deploy to development server?[yes/no]: " confirmation

if [ $confirmation != 'yes' ]
then
    echo "Thanks."
    exit 0
fi

clear

if [ -d "dist" ]
then
    rm -rf dist
fi

npm run build

cd dist

echo "Connecting to the server..."

scp -r . ${user}@${server}:${server_path}

echo "Deployment completed successfully."

cd ../

rm -rf dist

exit 0
