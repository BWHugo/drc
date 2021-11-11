# drc
sudo docker run --name db -d mongo:4.0 --smallfiles --replSet rs0 --oplogSize 128

sudo docker exec -ti db mongo --eval "printjson(rs.initiate())"

sudo docker run --name rocketchat -p 80:3000 --link db --env ROOT_URL=http://192.168.19.251 --env MONGO_OPLOG_URL=mongodb://db:27017/local -d rocket.chat