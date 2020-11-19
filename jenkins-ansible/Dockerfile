FROM jenkins/jenkins:lts

USER root


### for upgrading to python 3 
#RUN apt-get -y  update && \
#    apt-get -y upgrade && \
#    apt-get -y install python3 python3-pip

#RUN python3 --version

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    pip install ansible --upgrade 

USER jenkins 
