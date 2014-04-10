FROM ubuntu:12.04
RUN apt-get update -q
RUN apt-get install -qy qemu-kvm socat curl dnsmasq iptables
RUN curl -L https://github.com/boot2docker/boot2docker/releases/download/v0.8.0/boot2docker.iso >/boot2docker.iso
ADD bin /usr/local/bin
EXPOSE 22/tcp 4243/tcp 5900/tcp
