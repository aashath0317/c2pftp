FROM ghcr.io/kangershub/torrentleechx:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
RUN chmod +x extract

CMD ["bash","start.sh"]
