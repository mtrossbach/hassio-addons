FROM ghcr.io/home-assistant/base:latest
ARG BUILD_ARCH

COPY config.json /
RUN apk --no-cache add jq curl tar \
    && NOAH_MQTT_VERSION="$(jq --raw-output '.version // empty' /config.json)" \
    && case "$BUILD_ARCH" in \
        amd64) ARCH="amd64" ;; \
        aarch64) ARCH="arm64" ;; \
        armv7) ARCH="armv7" ;; \
        armhf) ARCH="armv6" ;; \
        *) echo "Unsupported BUILD_ARCH: ${BUILD_ARCH}" && exit 1 ;; \
    esac \
    && curl -L -o /noah-mqtt.tar.gz "https://github.com/mtrossbach/noah-mqtt/releases/download/v${NOAH_MQTT_VERSION}/noah-mqtt_${NOAH_MQTT_VERSION}_linux_${ARCH}.tar.gz" \
    && tar -xf /noah-mqtt.tar.gz -C / \
    && rm /noah-mqtt.tar.gz

COPY rootfs/docker-entrypoint.sh /
RUN chmod a+x /noah-mqtt /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
