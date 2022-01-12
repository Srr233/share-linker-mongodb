#!/bin/sh
echo $PORT
echo "Starting"
echo "Create user"

mongod --bind_ip 0.0.0.0:$PORT &

sleep 15

mongo --host 127.0.0.1:$PORT --eval 'db.getSiblingDB("admin").createUser({user:"admin", pwd:"adminimda", roles:[{role:"userAdminAnyDatabase",db:"admin"}]});'

echo "Done registering user"
echo "Start --auth mongod"

mongod --bind_ip 0.0.0.0:$PORT --auth

echo "Go to the bed"

sleep 15

echo "Waking up"
echo "Working"

mongo 127.0.0.1:$PORT -u admin -p adminimda --eval 'db.getSiblingDB("ShareLinker").createUser({user:"Sr233", pwd:"greatPassword_QWErty", roles:[{role:"readWrite",db:"ShareLinker"}]});'

echo "Done"
echo $PORT
wait