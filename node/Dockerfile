#Base Image for Ansible
FROM ansible_base
LABEL maintainer="Roy Robinson"


RUN apt-get update && apt-get install -y openssh-server \
	&& rm -rf /var/lib/apt/lists/*

RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd \
	&& echo "ansible  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

COPY --from=ansible_base /home/ansible/.ssh/authorized_keys /home/ansible/.ssh/

USER ansible
RUN mkdir -p ~/cprules/enp/internal_enp/scripts/

USER root
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]