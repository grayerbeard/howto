docker stop rhasspy
docker rm rhasspy
docker run -d -p 12101:12101 \
    --name rhasspy \
    --restart unless-stopped \
    -v "$HOME/.config/rhasspy/profiles:/profiles" \
    -v "/etc/localtime:/etc/localtime:ro" \
    -v "$HOME/testAudio:/testAudio" \
    --device /dev/snd:/dev/snd \
    rhasspy/rhasspy \
    --user-profiles /profiles \
    --profile en
