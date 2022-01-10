FROM mongo:latest

# VOLUME [ "/data/db" ]

ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=adminimda
ENV ME_CONFIG_MONGODB_ADMINUSERNAME=admin
ENV ME_CONFIG_MONGODB_ADMINPASSWORD=adminimda

EXPOSE 27017/tcp

COPY ./main.sh ./main.sh

CMD ["bash", "./main.sh"]
# ENTRYPOINT ["sh", "-c", "sleep 15 && mongo -u admin -p adminimda --authenticationDatabase admin --eval  'db.getSiblingDB(\"ShareLinker\").createUser({user:\"Sr233\", pwd:\"greatPassword_QWErty\", roles:[{role:\"readWrite\",db:\"ShareLinker\"}]});'"]