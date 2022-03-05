wget https://codeload.github.com/aashath0317/ftptest/zip/refs/heads/master
unzip master
mv ftptest-master/* /usr/src/app/
unzip accounts.zip

python3 update.py && python3 -m bot && bash rclone.sh
