FROM mongo:latest
RUN "printjson(rs.initiate())"
VOLUME /dbs

FROM rocket.chat:latest
ENV ROOT_URL=http://192.168.19.83
ENV MONGO_OPLOG_URL=mongodb://db:27017/local
VOLUME /rc