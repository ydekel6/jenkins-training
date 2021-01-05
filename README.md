# jenkins-training
This repository is meant for following the course of Ricardo Andre Gonzalez Gomez in [Udemy](https://www.udemy.com/course/jenkins-from-zero-to-hero/) 
and training myself with deploying Jenkins over k8s cluster. 

The [compose](https://github.com/ydekel6/jenkins-training/blob/main/docker-compose.yaml) file creates a jenkins instance based on the jenkins-ansible image,
a centos 7 endpoint, a db host based on mysql and a basic centos 7 with php capability. 

## centos7
The [Centos7 folder](https://github.com/ydekel6/jenkins-training/tree/main/centos7) is a basic centos 7 Dockerfile with added ssh, mysql, pip and awscli installed.
Also, it creates a `remote_user` and setup the home dir for  it.

## dsl
The [dsl folder](https://github.com/ydekel6/jenkins-training/tree/main/dsl) is just some basic dsl jobs for training and understanding 
some basic dsl syntax when using the dsl plugin.

For the full syntax, follow [this link](https://jenkinsci.github.io/job-dsl-plugin/)

## jenkins-ansible
The [jenkins-ansible](https://github.com/ydekel6/jenkins-training/tree/main/jenkins-ansible/) is a basic Dockerfile with added python 3 (optionally), pip and ansible.
In the [files folder](https://github.com/ydekel6/jenkins-training/tree/main/jenkins-ansible/files) there are some files to play with ansible and mysql according to the course.

## jenkins-k8s
The [jenkins-k8s](https://github.com/ydekel6/jenkins-training/tree/main/jenkins-k8s) is some basic files in order to deploy Jenkins in a k8s cluster.

The [relay_pod.yaml](https://github.com/ydekel6/jenkins-training/blob/main/jenkins-k8s/relay_pod.yaml) is for anyone who wants to expose the Jenkins (or any othr service)
from an inside network (such as a VM cluster). For example, this allows you to setup github webhooks.
