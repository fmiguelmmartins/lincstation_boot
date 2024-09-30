# Instructions

If instead of using unraid which ships freely with your lincstation N1, you've decided to install another OS, you probably have blinking LED's and the reset button in the back stopped working. To prevent this from happening follow these instructions:

1. Clone this project to your truenas home directory. After cloning you should have the path:
```
/home/admin/lincstation_boot
```

2. Make the go script executable:
```
sudo chmod +x /home/admin/lincstation_boot/go.sh
```

3. Copy the startup service to /etc/systemd/system/custom-startup.service
```
sudo cp /home/admin/lincstation_boot/custom-startup.service /etc/systemd/system/custom-startup.service 
```

4. Reload systemd, enable and start the service
```
sudo systemctl daemon-reload
sudo systemctl enable custom-startup.service
sudo systemctl start custom-startup.service
```

5. Verify the service status
```
sudo systemctl status custom-startup.service
```

I have tested this with truenas scale 24.04.2.2 and no other distro, but since TrueNas Scale is based on debian, I would assume it should work (in theory) with other debian distro's, but you might have to modify the paths if you decide not to install it on root!

As mentioned in the disclaimer, this is my own little hack to get led's and the reset button working without having to run unraid, however this is my own hack! The company lincplus is not associated in anyway with this and in fact they mention in their terms and conditions that one should not remove the USB mini stick containing unraid. Doing so, may void the warranty. I however... took mine out! :)




