#!/usr/bin/env bashio
export VERSION="$(jq --raw-output '.version // empty' config.json)"

if (bashio::config.is_empty 'mqtt' || ! (bashio::config.has_value 'mqtt.server' || bashio::config.has_value 'mqtt.user' || bashio::config.has_value 'mqtt.password')) && bashio::var.has_value "$(bashio::services 'mqtt')"; then
    export MQTT_HOST="$(bashio::services 'mqtt' 'host')"
    export MQTT_PORT="$(bashio::services 'mqtt' 'port')"
    export MQTT_USERNAME="$(bashio::services 'mqtt' 'username')"
    export MQTT_PASSWORD="$(bashio::services 'mqtt' 'password')"
else
    export MQTT_HOST="$(bashio::config 'mqtt.host')"
    export MQTT_PORT="$(bashio::config 'mqtt.port')"
    export MQTT_USERNAME="$(bashio::config 'mqtt.username')"
    export MQTT_PASSWORD="$(bashio::config 'mqtt.password')"
fi

export GROWATT_USERNAME="$(bashio::config 'growatt_username')"
export GROWATT_PASSWORD="$(bashio::config 'growatt_password')"
export LOG_LEVEL="$(bashio::config 'log_level')"
export POLLING_INTERVAL="$(bashio::config 'polling_interval')"
/noah-mqtt
