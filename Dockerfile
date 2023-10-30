# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# install app dependencies
#RUN apt-get update && apt-get -y install wget lsb-release software-properties-common gnupg
#RUN wget https://apt.llvm.org/llvm.sh
#RUN chmod +x llvm.sh
#RUN  ./llvm.sh 17

RUN apt-get update
RUN apt-get install -y clang

# install app
COPY hello.c /

RUN echo $PATH
# RUN source ~/.profile
# RUN source /etc/profile
RUN  clang -Wall hello.c -o hello
CMD ./hello
# final configuration
#ENV FLASK_APP=hello
#EXPOSE 8000
#CMD flask run --host 0.0.0.0 --port 8000


