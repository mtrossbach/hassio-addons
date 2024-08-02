#!/usr/bin/env bashio

export MQTT_HOST="$(bashio::services 'mqtt' 'host')"
export MQTT_PORT="$(bashio::services 'mqtt' 'port')"
export MQTT_USERNAME="$(bashio::services 'mqtt' 'username')"
export MQTT_PASSWORD="$(bashio::services 'mqtt' 'password')"
export GROWATT_USERNAME="$(bashio::config 'growatt_username')"
export GROWATT_PASSWORD="$(bashio::config 'growatt_password')"
export LOG_LEVEL="$(bashio::config 'log_level')"
export POLLING_INTERVAL="$(bashio::config 'polling_interval')"
/noah-mqtt