FROM ubuntu
MAINTAINER Shriram Sharma "shriram.sharma22@gmail.com"

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y openjdk-6-jre
RUN apt-get install -q -y openjdk-6-jdk
RUN apt-get install -q -y vim
RUN apt-get install -q -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:docker' | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
