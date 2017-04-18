FROM gentoo/stage3-amd64:latest
MAINTAINER Chun-Yu Lee (Mat) <matlinuxer2@gmail.com>
ADD build.sh /
RUN /build.sh
ENTRYPOINT ["/usr/lib/systemd/systemd"]
