FROM mongo:latest

# VOLUME [ "/data/db" ]

EXPOSE 27017/tcp

COPY ./main1.sh ./main.sh

ENTRYPOINT ["bash", "./main.sh"]