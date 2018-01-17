FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get --no-install-recommends -y install apt-utils \
    && apt-get --no-install-recommends -y install gnupg dirmngr \
    && echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --keyserver-options http-proxy=$http_proxy --recv-keys 93C4A3FD7BB9C367 \
    && apt-get update \
    && apt-get --no-install-recommends -y install ansible

ENTRYPOINT ["ansible-playbook"]
CMD ["--help"]
