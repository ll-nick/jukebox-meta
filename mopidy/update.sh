#!/bin/bash

# Mopidy
cd /home/pi/jukebox/mopidy-docker/
git pull
./build.sh
docker push nickll/mopidy:raspbian

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

cd /home/pi/jukebox/jukebox-meta/mopidy
docker-compose down
docker-compose up -d

echo "Ran mopidy update script at $(date)." > /home/pi/jukebox/update-timestamp.txt
