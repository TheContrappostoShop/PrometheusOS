# PrometheusOS [![Discord Link](https://discordapp.com/api/guilds/881628699500359731/widget.png?style=shield)](https://discord.gg/GFUn9gwRsj)

Custom Raspberry Pi OS distribution for the open source Prometheus MSLA printer.

## Variants
This repository provides two versions of the PrometheusOS image:

### Odyssey-Based

> [!WARNING]  
> ***The Odyssey-Based image is still a work in progress, and users should exercise extreme caution when using it***

This version of the PrometheusOS uses
[Odyssey](https://github.com/TheContrappostoShop/Odyssey), the open source resin
printing software developed by us at the Contrappostop Shop. It takes models
slices in the `.sl1` format, from PrusaSlicer. To get started slicing models
for Odyssey, check out our slicer profile [here]().

We have our own front-end for Odyssey in the works (called Orion), but until
that's finished, the Odyssey-Based PrometheusOS image comes packaged with
[Mainsail](https://docs.mainsail.xyz/), and a few Gcode macros and other utlities
to help you use Odyssey from there. When you upload a `.sl1` file to Mainsail,
a corresponding `.gcode` file will be generated, which will allow you to start
your print like normal.

Beware though, after Odyssey has started the print, Mainsail won't have any
visibility into the process itself. You can find more information about an
ongoing print by checking the logs in your `printer_data/logs` directory on your
RPi, and if you need to stop the print for any reason, you can use the gcode
macro `ODYSSEY_EMERGENCY_STOP` in the Mainsail console.

### NanoDLP-Based
This version of the PrometheusOS uses [NanoDLP](https://www.nanodlp.com/), an
integrated slicer and control software. NanoDLP is more feature-rich,
having been around for longer, and may provide a more cohesive experience.

NanoDLP also supports the DSI touchscreen on the front of the Prometheus, which
is currently unsupported by Odyssey&Mainsail.

### Why Both? Which should I choose?
While NanoDLP is a more complete software, used by many resin printing projects
the world over, it is not, at time of writing, Open Source.

We at the Contrapposto Shop take our dedication to Open Source technology very
seriously, and have done our best to keep the Prometheus, and all associated
software, as open and freely available as possible. Thus, the primary motivation
behind the Odyssey and Orion projects is to provide a fully open source
alternative to NanoDLP (and any other closed-source control software) for our
users and our community.

That said, Odyssey and Orion still have a long ways to go before they can be
considered complete, and the current integration with Mainsail is hardly a clean
solution. We understand that many of our users would prefer a more cohesive and
well-proven interface, and have worked with the team behind NanoDLP to provide
it as an option here.

So if you'd prefer a more feature-complete application, by all means choose the
NanoDLP-based PrometheusOS image. Our only ask is that you consider giving
Odyssey a try once we're a little farther along.

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