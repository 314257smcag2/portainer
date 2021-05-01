FROM portainer/portainer-ce

ENV TZ=Asia/Shanghai
ENV DOMAIN=testsanjin.xyz
LABEL owner=portainer

VOLUME ["/data"]
RUN set -ex \
	&& apk add --no-cache tzdata ca-certificates bash
COPY private.key /private.key
COPY fullchain.crt /fullchain.crt

COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
