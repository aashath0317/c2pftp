FROM anasty17/mltb:latest
RUN apt-get -qq install -y --no-install-recommends wget unzip fuse
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN wget https://gist.githubusercontent.com/aashath0317/fd2c2f3afd0513c20a2564b6b2774506/raw/f0df01de6662d1b7944d056f5de4b555e4cf60dc/re.txt
RUN pip3 install --no-cache-dir -r re.txt
RUN curl https://rclone.org/install.sh | bash
RUN mv rclone.conf /usr/src/app/.config/rclone/rclone.conf
COPY . .
CMD ["bash", "run.sh"]
