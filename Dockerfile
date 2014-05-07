FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install -qy qemu-kvm socat curl dnsmasq iptables cloud-utils
#RUN mkdir -p /cache
#RUN curl -L https://github.com/boot2docker/boot2docker/releases/download/v0.8.0/boot2docker.iso >/cache/boot2docker.iso
#RUN curl -L http://cloud-images.ubuntu.com/trusty/current/trusty-server-cloudimg-amd64-disk1.img >/cache/trusty.img
#RUN ln -s /cache/trusty.img /system.img
ADD bin /usr/local/bin
EXPOSE 22/tcp 4243/tcp 5900/tcp
CMD kvm-start
