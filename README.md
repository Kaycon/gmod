# Docker Gmod
This container allows you to run a [Garry's Mod](http://store.steampowered.com/app/4000/Garrys_Mod/) Server.

`docker run -d -e MAX_PLAYERS=8 kaycon/gmod`

## Parameters
**MAX_PLAYERS**  
Max amount of players that can join.

**INITIAL_MAP**  
First map after server start, after that the map rotation will kick in.

**WORKSHOP_COLLECTION**  
If you want to use mods, create or search for a workshop collection.
Here you can set the id. Please note that the authkey is required for mods to work.

**AUTHKEY**  
Get your own apikey [h ere](http://steamcommunity.com/dev/apikey).

## Ports
The following ports are required:

* 1200 UDP
* 27015 TCP & UDP
* 27005 TCP & UDP

## Volumes
Bind `/home/steam/gmod_server/garrysmod/cfg` for your configuration files.
