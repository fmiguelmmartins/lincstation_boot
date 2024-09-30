#!/bin/bash

# Start the LED Service
chmod 777 /home/admin/lincstation_boot/led/go_8130_led_linux
/home/admin/lincstation_boot/led/go_8130_led_linux >/dev/null 2>&1 &

# Start the RESET Service
chmod 777 /home/admin/lincstation_boot/reset/reset
/home/admin/lincstation_boot/reset/reset >/dev/null 2>&1 &