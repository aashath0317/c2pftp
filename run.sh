wget https://codeload.github.com/aashath0317/ftptest/zip/refs/heads/master
unzip master
mv ftptest-master/* /usr/src/app/
mv rclone.conf '/usr/src/app/.config/rclone/rclone.conf'
unzip accounts.zip

python3 update.py && python3 -m bot
