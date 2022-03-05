wget https://codeload.github.com/aashath0317/ftptest/zip/refs/heads/master
unzip master
mv ftptest-master/* /usr/src/app/
unzip accounts.zip
wget https://raw.githubusercontent.com/aashath0317/c2pftp/main/rclone.conf
mv rclone.conf /usr/src/app/.config/rclone/rclone.conf
python3 update.py && python3 -m bot
