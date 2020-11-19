FROM centos:7

RUN yum update -y && \
    yum -y install openssh-server python3
# Create a user and a home folder for it
RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh && \
    rm -rf /run/nologin

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys


RUN ssh-keygen -A
#install the mysql client to talk to the server
RUN yum -y install mysql
#install pip and aws-cli to talk to aws
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    pip install awscli --upgrade

CMD /usr/sbin/sshd -D
