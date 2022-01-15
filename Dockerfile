FROM mongo:latest

# VOLUME [ "/data/db" ]

EXPOSE 27017

# COPY ./main1.sh ./main.sh

# cmd ["bash", "./main.sh"]
CMD sh -c mongod --bind_ip 0.0.0.0 --port $PORT