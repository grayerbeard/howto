docker pull eclipse-mosquitto
mkdir -p /home/david/.config/mosquitto/config
mkdir -p /home/david/.config/mosquitto/data
mkdir -p /home/david/.config/mosquitto/log
echo "persistence true" > /home/david/.config/mosquitto/config/mosquitto.conf
echo "persistence_location /mosquitto/data/" >> /home/david/.config/mosquitto/config/mosquitto.conf
echo "log_dest file /mosquitto/log/mosquitto.log" >> /home/david/.config/mosquitto/config/mosquitto.conf
docker run -d --name=mosquitto --restart=unless-stopped -p 1883:1883 -v /home/david/.config/mosquitto/config/mosquitto.conf:/mosquitto/config/mosquitto.conf -v /home/david/.config/mosquitto/data:/mosquitto/data -v /home/david/.config/mosquitto/log:/mosquitto/log eclipse-mosquitto
