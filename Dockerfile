FROM ubuntu

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt update
RUN apt install -y ethereum
RUN apt-get install -y solc

COPY . .
