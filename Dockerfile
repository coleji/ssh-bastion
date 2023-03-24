FROM ubuntu:focal
RUN apt update
RUN apt install -y openssh-server dnsutils net-tools telnet
RUN mkdir -p /root/.ssh
CMD echo $SSH_PUB_KEY > /root/.ssh/authorized_keys && /etc/init.d/ssh start && tail -f /dev/null
