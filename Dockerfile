# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && apt-get -y install wget lsb-release software-properties-common gnupg
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod +x llvm.sh
RUN  ./llvm.sh 17

# install app
#COPY hello.py /

# final configuration
#ENV FLASK_APP=hello
EXPOSE 8000
#CMD flask run --host 0.0.0.0 --port 8000


