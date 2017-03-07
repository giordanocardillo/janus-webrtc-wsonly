# Janus WebRTC compiled as following

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

## Running the container
A run configuration could be the following (host network is advisable to avoid ICE problems)

```
docker run -d --network=host -p 8188:8188 -p 8989:8989 -p 8088:8088 -p 8089:8089 -v /root/janus:/opt/janus/etc/janus --name janus giordanocardillo/janus-webrtc-wsonly
```  

## Configuration samples
Configuration is embedded inside the container, copy it to the host machine using:

```
docker cp janus:/home/janus /root/janus
```

Then restart the container

```
docker restart janus
```
