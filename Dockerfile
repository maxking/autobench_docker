FROM ubuntu:latest

RUN apt-get update && apt-get install --yes wget build-essential

RUN apt-get install unzip

WORKDIR /tmp

RUN wget https://github.com/menavaur/Autobench/archive/master.zip; \
	unzip master.zip;

RUN cd Autobench-master; \
	make; \
	make install;
	 
WORKDIR /	 
	 
