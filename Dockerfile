FROM java:8
MAINTAINER Tim Foley <tim.foley@plexusworldwide.com>
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

