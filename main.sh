#!/bin/sh
echo $PORT

echo "Starting"

mongod --bind_ip 0.0.0.0 &

echo "Go to the bed"

sleep 15

echo "Waking up"
echo "Working"

mongo --eval 'db.getSiblingDB("ShareLinker").createUser({user:"Sr233", pwd:"greatPassword_QWErty", roles:[{role:"readWrite",db:"ShareLinker"}]});'

echo "Done"

wait