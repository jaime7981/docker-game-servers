FROM ubuntu:latest

RUN echo "docker start"

RUN dpkg --add-architecture i386 & apt-get update
RUN echo "2" | apt-get install steamcmd sudo -y
RUN apt install --reinstall ca-certificates -y
RUN cd ~ ln -s /usr/games/steamcmd steamcmd

RUN useradd -m -p pzuser@7981 -s /bin/bash pzuser && usermod -aG sudo pzuser
RUN mkdir /pzs && mkdir /pzs/pzserver && chown pzuser:pzuser /pzs/pzserver

USER pzuser
#RUN /usr/games/steamcmd +runscript /pzs/update_pz_server.txt
#RUN /pzs/pzserver/start-server.sh

#CMD /bin/bash
#CMD tail -f /dev/null
CMD bash /pzs/pzserver/start-server.sh -servername jaime_pzs
