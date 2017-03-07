FROM ubuntu:16.04
MAINTAINER Giordano Cardillo
RUN ["apt-get","update"]
RUN ["apt-get","-y","install","libnice10", "libglib2.0-0", "libjansson4", "libssl1.0.0", "libcurl3", "libsofia-sip-ua0", "libogg0", "libopus0", "libmicrohttpd10"]
COPY ./janus /opt/janus/
COPY ./janus/etc/janus /home/janus/
COPY ./libs/* /usr/lib/
EXPOSE 8188 8989 8088 8089
CMD ["/opt/janus/bin/janus"]