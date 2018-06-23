FROM debian:9.4-slim
ENV NOTVISIBLE "in users profile"
RUN apt-get update &&\
    apt-get install -y openssh-server &&\
    mkdir /var/run/sshd &&\
    useradd tempuser &&\
    echo 'tempuser:passw0rd12' | chpasswd &&\
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd &&\
    echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
