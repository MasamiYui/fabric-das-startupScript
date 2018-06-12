#!/bin/bash
cd ~
rm -rf couchdb*
mkdir couchdb0
mkdir couchdb1
mkdir couchdb2
mkdir couchdb3
docker run -p 5984:5984 -d --name couchdb0 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password -v ~/couchdb0:/opt/couchdb/data klaemo/couchdb
docker run -p 6984:5984 -d --name couchdb1 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password -v ~/couchdb1:/opt/couchdb/data klaemo/couchdb
docker run -p 7984:5984 -d --name couchdb2 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password -v ~/couchdb2:/opt/couchdb/data klaemo/couchdb
docker run -p 8984:5984 -d --name couchdb3 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password -v ~/couchdb3:/opt/couchdb/data klaemo/couchdb
