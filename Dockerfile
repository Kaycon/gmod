FROM kaycon/steamcmd

MAINTAINER Kaycon "kaycon1@web.de"

ENV MAX_PLAYERS=12
ENV WORKSHOP_COLLECTION=123456789
ENV INITIAL_MAP=gm_flatgrass
ENV AUTHKEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

EXPOSE 1200/UDP
EXPOSE 27015
EXPOSE 27015/UDP
EXPOSE 27005
EXPOSE 27005/UDP

WORKDIR /home/steam

RUN ./steamcmd.sh +login anonymous +force_install_dir ./gmod_server +app_update 4020 validate +quit
RUN ./steamcmd.sh +login anonymous +force_install_dir ./cstrike_server +app_update 232330 validate +quit 

#Fixxes
RUN apt-get update
RUN apt-get install gdb -y
RUN apt-get clean
RUN ln -s /home/steam/linux32/libstdc++.so.6 ./gmod_server/bin/libstdc++.so.6
RUN mkdir /root/.steam
RUN ln -s /root/linux32 /root/.steam/sdk32

COPY ./start.sh ./start.sh
COPY ./cfg/ ./garrrysmod/cfg/

VOLUME /home/steam/gmod_server/garrysmod/cfg

USER steam

CMD ["/bin/sh", "start.sh"]
