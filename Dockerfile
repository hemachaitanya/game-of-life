FROM ubuntu:latest
RUN apt update && apt install git openjdk-8-jdk maven -y
RUN git clone https://github.com/hemachaitanya/game-of-life.git
WORKDIR /game-of-life/gameoflife-web/
RUN mvn package
EXPOSE 9090
CMD [ "mvn","jetty:run" ]