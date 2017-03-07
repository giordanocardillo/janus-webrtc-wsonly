[![Docker Stars](https://img.shields.io/docker/stars/giordanocardillo/janus-webrtc-wsonly.svg?style=flat-square)](https://hub.docker.com/r/giordanocardillo/janus-webrtc-wsonly/) [![Docker Pulls](https://img.shields.io/docker/pulls/giordanocardillo/janus-webrtc-wsonly.svg?style=flat-square)](https://hub.docker.com/r/giordanocardillo/janus-webrtc-wsonly/) [![Docker Automated build](https://img.shields.io/docker/automated/giordanocardillo/janus-webrtc-wsonly.svg?style=flat-square)](https://hub.docker.com/r/giordanocardillo/janus-webrtc-wsonly/)

# Janus WebRTC v0.2.2 compiled as follows

```
libsrtp version:           2.0.x
SSL/crypto library:        OpenSSL
DataChannels support:      yes
Recordings post-processor: no
TURN REST API client:      yes
Doxygen documentation:     no
Transports:
    REST (HTTP/HTTPS):     yes
    WebSockets:            yes (new API)
    RabbitMQ:              no
    MQTT:                  no
    Unix Sockets:          yes
Plugins:
    Echo Test:             yes
    Streaming:             yes
    Video Call:            yes
    SIP Gateway:           yes
    Audio Bridge:          yes
    Video Room:            yes
    Voice Mail:            yes
    Record&Play:           yes
    Text Room:             yes
Event handlers:
    Sample event handler:  yes
```

## Pulling the image
The image is available on docker hub as automated build

```
docker pull giordanocardillo/janus-webrtc-wsonly
```

## Running the container
A run configuration could be the following (host network is advisable to avoid ICE problems)

```
docker run -d --network=host -p 8188:8188 -p 8989:8989 -p 8088:8088 -p 8089:8089 -v /root/janus:/opt/janus/etc/janus --name janus giordanocardillo/janus-webrtc-wsonly
```  

## Configuration samples
Configuration is shipped within the container, to copy it to the host machine use the following command (after the container is started)

```
docker cp janus:/home/janus /root/janus
```

Then restart the container

```
docker restart janus
```
