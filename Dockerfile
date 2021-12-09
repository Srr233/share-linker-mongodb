FROM mongo:latest

EXPOSE 27017

# ENTRYPOINT ["sh", "-c", "sleep 15 && mongo -u admin -p adminimda --authenticationDatabase admin --eval  'db.getSiblingDB(\"ShareLinker\").createUser({user:\"Sr233\", pwd:\"greatPassword_QWErty\", roles:[{role:\"readWrite\",db:\"ShareLinker\"}]});'"]