#Base Image for Ansible
FROM ubuntu:20.04 AS control
LABEL maintainer="Roy Robinson"

# Install dependencies.
RUN apt-get update && apt-get install -y \
	sudo \
	vim \
	apt-utils \
	bash-completion \
	ansible \
	&& groupadd -r ansible \
	&& useradd -rg ansible ansible -s /bin/bash \
	&& echo 'root:ansible' | chpasswd \
	&& echo 'ansible:ansible' | chpasswd \
	&& echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config \
	&& mkdir /var/run/sshd \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /home/ansible
RUN chown -R ansible:ansible /home/ansible

USER ansible
RUN mkdir -p ~/.ssh \
	&& chmod 700 ~/.ssh \
	&& cat /dev/zero | ssh-keygen -q -N "" \
	&& cat /home/ansible/.ssh/id_rsa.pub >> /home/ansible/.ssh/authorized_keys

USER root
EXPOSE 22
