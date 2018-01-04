<<<<<<< HEAD
FROM egeeio/minecraftserver-modded
COPY cfg/eula.txt /opt/minecraft/eula.txt
COPY run.sh /opt/minecraft/run.sh
CMD ["/opt/minecraft/run.sh"]
=======
FROM java:8
RUN apt-get install git curl

RUN mkdir /opt/minecraft
WORKDIR /opt/minecraft
RUN curl -o /opt/minecraft/Forge.jar http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.10.2-12.18.3.2511/forge-1.10.2-12.18.3.2511-installer.jar
RUN java -jar /opt/minecraft/Forge.jar --installServer
>>>>>>> cfd3de09705509fa7e9cf6c24eb7a83b748029e4
