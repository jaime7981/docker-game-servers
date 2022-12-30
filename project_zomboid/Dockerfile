FROM ubuntu:20.04

RUN echo "docker start"

RUN dpkg --add-architecture i386 & apt-get update
RUN echo "2" | apt-get install steamcmd sudo -y
RUN cd ~ ln -s /usr/games/steamcmd steamcmd

COPY setup_pzuser.sh /pzs/setup_pzuser.sh
RUN chmod +x /pzs/setup_pzuser.sh
RUN /pzs/setup_pzuser.sh

COPY update_pz_server.txt /home/pzuser/update_pz_server.txt
#RUN $STEAMROOT/steamcmd.sh +runscript $HOME/update_pz_server.txt
#CMD screen ~/.steam/steamcmd/steamcmd.sh +runscript $HOME/update_zomboid.txt

USER pzuser
RUN /usr/games/steamcmd +runscript $HOME/update_pz_server.txt

CMD /bin/bash
