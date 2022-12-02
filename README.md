![Discord Link](https://discordapp.com/api/guilds/881628699500359731/widget.png?style=shield)
# PrometheusOS

Custom Raspberry Pi OS distribution for the open source Prometheus MSLA printer.

## Download
Download the latest release 
[here](https://github.com/TheContrappostoShop/PrometheusOS/releases) or select 
a nightly or branch build from the Github Actions tab. 

## Install
1. Unzip the PrometheusOS image, and 
[flash it to a micro SD card](https://www.raspberrypi.com/documentation/computers/getting-started.html#installing-the-operating-system).

2. Configure your WiFi connection by editing the `prometheus-os-wpa-supplicant.conf`
in the boot partition of the flashed card. Optionally, you may skip this step, 
and configure your network setup from the touch screen, if applicable. 

3. Insert the card into your Raspberry Pi, and ensure that the device is 
securely fastened to your Prometheus board, with all cables attached (See the 
Prometheus MSLA build instructions for more details).

4. Power on your printer, and log in to the Pi with SSH (you will need to check 
your router to determine the IP address of your device). The default username is 
`pi` and the default password is `raspberry`--it is recommended that you change
this password as soon as possible. 


Your Raspberry Pi is now fully configured for use in your Prometheus MSLA 
printer. After a few moments, the NanoDLP web interface will be available at the
IP address assigned by your router, and the touchscreen interface should come
display as well. 