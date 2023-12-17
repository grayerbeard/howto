docker pull rhasspy/rhasspy
mkdir -p /home/david/.config/rhasspy
docker run -d -p 12101:12101 --name rhasspy -v /home/david/.config/rhasspy:/config rhasspy/rhasspy


