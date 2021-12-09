FROM mongo:latest

# VOLUME [ "/data/db" ]

# ENV MONGO_INITDB_ROOT_USERNAME=admin
# ENV MONGO_INITDB_ROOT_PASSWORD=adminimda

EXPOSE 27017

# ENTRYPOINT ["sh", "-c", "sleep 15 && mongo -u admin -p adminimda --authenticationDatabase admin --eval  'db.getSiblingDB(\"ShareLinker\").createUser({user:\"Sr233\", pwd:\"greatPassword_QWErty\", roles:[{role:\"readWrite\",db:\"ShareLinker\"}]});'"]