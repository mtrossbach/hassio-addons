ARG BUILD_FROM
FROM $BUILD_FROM
ARG BUILD_FROM
COPY config.json /
RUN apk --no-cache add jq
RUN NOAH_MQTT_VERSION=$(jq --raw-output '.version // empty' config.json) && case "$BUILD_FROM" in \
*"aarch64-base"*) ARCH="arm64";; \
*"armhf-base"*) ARCH="armv6";; \
*"amd64-base"*) ARCH="amd64";; \
esac \
&& curl -L -o /noah-mqtt.tar.gz https://github.com/mtrossbach/noah-mqtt/releases/download/v${NOAH_MQTT_VERSION}/noah-mqtt_${NOAH_MQTT_VERSION}_linux_${ARCH}.tar.gz && tar -xf /noah-mqtt.tar.gz && rm /noah-mqtt.tar.gz

COPY rootfs/docker-entrypoint.sh /
RUN chmod a+x /noah-mqtt && chmod a+x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh"]
