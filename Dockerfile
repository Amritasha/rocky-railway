FROM rockylinux:9

RUN dnf update -y && \
    dnf install -y epel-release && \
    dnf install -y wget curl git python3 python3-pip \
        net-tools iproute iputils bind-utils \
        vim nano htop tree unzip zip \
        gcc gcc-c++ make \
        openssh-clients telnet nmap-ncat \
        jq less man-db sudo lsof strace \
        procps-ng file ca-certificates \
        neofetch && \
    dnf clean all

RUN wget -qO /usr/local/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64 && \
    chmod +x /usr/local/bin/ttyd

RUN echo "neofetch" >> /root/.bashrc && \
    echo "cd /root" >> /root/.bashrc

EXPOSE 7681

CMD ["/bin/bash", "-c", "\
    echo \"export PS1='\\[\\033[01;32m\\]$USERNAME@\\h\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ '\" >> /root/.bashrc && \
    /usr/local/bin/ttyd -p 7681 -c $USERNAME:$PASSWORD /bin/bash"]
