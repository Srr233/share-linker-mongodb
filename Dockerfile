FROM mongo:latest

# VOLUME [ "/data/db" ]

EXPOSE 27017/tcp

COPY ./main1.sh ./main.sh

ENTRYPOINT ["bash", "./main.sh"]
# ENTRYPOINT ["sh", "-c", "sleep 15 && mongo -u admin -p adminimda --authenticationDatabase admin --eval  'db.getSiblingDB(\"ShareLinker\").createUser({user:\"Sr233\", pwd:\"greatPassword_QWErty\", roles:[{role:\"readWrite\",db:\"ShareLinker\"}]});'"]