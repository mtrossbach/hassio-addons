# Home Assistant Add-ons by mtrossbach

Currently, this repository provides the following Home Assistant add-ons:
- **noah-mqtt**: more information [https://github.com/mtrossbach/noah-mqtt](https://github.com/mtrossbach/noah-mqtt)


## Installation
### Prerequisites
1. Please install the "Mosquitto broker" first if you not already have it; in Home Assistant go to **[Settings → Add-ons → Add-on store](https://my.home-assistant.io/redirect/supervisor_store/)** and install the **[Mosquitto broker](https://my.home-assistant.io/redirect/supervisor_addon/?addon=core_mosquitto)** addon, then start it.
2. Please setup the "MQTT" integration; in Home Assistant go to **[Settings → Integration](https://my.home-assistant.io/redirect/integration/)**
### Install noah-mqtt
1. Go back to the **Add-on store**, click **⋮ → Repositories**, fill in</br>  `https://github.com/mtrossbach/hassio-addons` and click **Add → Close** or click the **Add repository** button below, click **Add → Close** (You might need to enter the **internal IP address** of your Home Assistant instance first).  
   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fmtrossbach%2Fhassio-addons)
2. Click on the addon and press **Install** and wait till the addon is installed.
3. Click on **Configuration**
    - Please fill out **Growatt Username** and **Growatt Password**
    - Click **Save**
4. Start the addon by going to **Info** and click **Start**

