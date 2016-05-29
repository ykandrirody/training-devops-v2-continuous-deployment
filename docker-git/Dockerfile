FROM java:7

MAINTAINER Yassine KANDRI RODY

# Install git 
RUN apt-get update -y
RUN apt-get install -y build-essential unzip curl git-core

# Define the infinite program
COPY . /app/
WORKDIR /app/
RUN javac Main.java

RUN chmod +x clone-and-push.sh

# Define working directory.
# RUN mkdir -p /usr/local
# WORKDIR /usr/local

# Define default command.
CMD ["java", "Main"]
