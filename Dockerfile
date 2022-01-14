FROM mongo:latest

# VOLUME [ "/data/db" ]

EXPOSE $PORT

# COPY ./main1.sh ./main.sh

# cmd ["bash", "./main.sh"]
CMD [ "sh", "-c", "mongod" ]