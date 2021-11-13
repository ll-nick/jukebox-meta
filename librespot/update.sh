#!/bin/bash

# Librespot
cd /home/pi/jukebox/librespot-docker/
git pull
./build.sh
docker push nickll/librespot:latest

# Snapcast Server
cd /home/pi/jukebox/snapcast-server-docker/
git pull
./build.sh
docker push nickll/snapcast-server:raspbian

# Snapcast Client
cd /home/pi/jukebox/snapcast-client-docker/
git pull
./build.sh
docker push nickll/snapcast-client:raspbian

cd /home/pi/jukebox/jukebox-meta/librespot
docker-compose down
docker-compose up -d

echo "Ran librespot update script at $(date)." > /home/pi/jukebox/update-timestamp.txt
