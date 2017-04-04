FROM quay.io/necrose99/gentoo-on-rpi3-64bit
MAINTAINER  Necrose99
ENV ARCH=arm64
RUN emerge --sync && emerge entropy equo layman entropy-server 
## more than a number of ways to skin this cat. 
# ENTRYPOINT ["./umeq-arm64", "-execve", "-0", "bash", "/bin/bash"]
# ENTRYPOINT ["/usr/bin/qemu-aarch64-static", "-execve", "-0", "bash", "/bin/bash"]
