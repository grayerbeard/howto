docker pull homeassistant/home-assistant:stable
mkdir -p /home/david/.config/homeassistant
docker run -d --name=homeassistant --restart=unless-stopped -v /home/david/.config/homeassistant:/config -v /etc/localtime:/etc/localtime:ro -p 8123:8123 homeassistant/home-assistant:stable

