wget https://codeload.github.com/aashath0317/ftptest/zip/refs/heads/master
unzip ftptest-master
mv ftptest-master/* /usr/src/app/

python3 update.py && python3 -m bot
