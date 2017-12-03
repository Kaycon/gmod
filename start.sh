#!/bin/bash

./gmod_server/srcds_run -game garrysmod -norestart -port 27015 +maxplayers $MAX_PLAYERS +map $INITIAL_MAP -authkey $AUTHKEY +host_workshop_collection $WORKSHOP_COLLECTION
