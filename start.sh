wget https://codeload.github.com/aashath0317/TorrentLeechX/zip/refs/heads/master
unzip master
mv TorrentLeechX-master/* /usr/src/app/
if [[ -n $RCLONE_CONFIG ]]; then
 echo "Rclone config detected"
 echo -e "$RCLONE_CONFIG" > /app/rclone.conf
fi

bash setup.sh; python3 -m tobrot
