FROM debian:unstable-20240311

RUN apt update && apt install -y openssh-server sudo bash

WORKDIR /etc/ssh

RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
