FROM mongo:latest
CMD mongo --eval "printjson(rs.initiate())
VOLUME /dbs

