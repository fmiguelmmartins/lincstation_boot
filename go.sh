#!/bin/bash

# Start the LED Service
chmod 777 /home/fx2mx3/lincstation_boot/led/go_8130_led_linux
/home/fx2mx3/lincstation_boot/led/go_8130_led_linux >/dev/null 2>&1 &

# Start the RESET Service
chmod 777 /home/fx2mx3/lincstation_boot/reset/reset
/home/fx2mx3/lincstation_boot/reset/reset >/dev/null 2>&1 &