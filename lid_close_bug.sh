## Faced in HP Laptops with Ubuntu 18 - when the lid is down, airplane mode is activated thus disconnecting from WiFi
## To prevent this, following script is written.

echo "[Unit]
Description=HP setkeycodes fix

[Service]
Type=oneshot
Restart=no
RemainAfterExit=no
ExecStart=/usr/bin/setkeycodes e057 240 e058 240

[Install]
WantedBy=rescue.target
WantedBy=multi-user.target
WantedBy=graphical.target" | sudo tee /etc/systemd/system/hp-keycodes.service;

sudo systemctl daemon-reload;
sudo systemctl enable hp-keycodes.service;
sudo reboot;
