FROM --platform=${TARGETPLATFORM} portainer/portainer-ce

ENV TZ=Asia/Shanghai
LABEL owner=portainer

ENTRYPOINT ["/portainer"]
CMD ["--templates","https://ghproxy.com/https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json","--logo","https://ghproxy.com/https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png","-l","owner=portainer"]
