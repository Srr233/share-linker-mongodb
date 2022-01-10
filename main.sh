#!/bin/sh

echo "Starting"

mongod &

echo "Go to the bed"

sleep 15

echo "Waking up"
echo "Working"

mongo --eval 'db.getSiblingDB("ShareLinker").createUser({user:"Sr233", pwd:"greatPassword_QWErty", roles:[{role:"readWrite",db:"ShareLinker"}]});'

echo "Done"

wait