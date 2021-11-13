# jukebox-meta

A package that brings together the different building blocks for a multi-room audio system.

You can find an exemplary docker-compose file to run a librespot/snapcast audio setup with two librespot containers, on snapcast server broadcasting both streams and one client receiving the streams.
Feel free to clone/fork this repository to adjust it to your specific needs.
It's mostly meant as an inspiration in case you struggle to get the setup right.

In the mopidy folder, you can find a docker-compose file I used a while for a mopidy server, however, I since moved to a librespot setup so no guarantees that this is still working.

## Hardware

I'm using a Raspberry Pi 3 to run the librespot containers and the snapcast server. On this Pi, I also run one of the clients.
Besides that, I have a couple of Pi Zeros and an old Android phone to run the snapcast clients in different rooms.

## Updating

To keep my images up to date, I wrote a little update script that I execute regularily using cron to build my images every now and then.

## Relevant repositories

https://github.com/ll-nick/librespot-docker
https://github.com/ll-nick/snapcast-server-docker
https://github.com/ll-nick/snapcast-client-docker

### Deprecated/unmaintained
https://github.com/ll-nick/mopidy-docker
