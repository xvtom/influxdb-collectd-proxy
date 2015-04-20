GOPATH:=$(GOPATH):`pwd`
BIN=bin
EXE=influxdb-collectd-proxy

GOCOLLECTD=github.com/paulhammond/gocollectd
INFLUXDBGO=github.com/influxdb/influxdb/client v0.8.8

all: get build

get:
	GOPATH=$(GOPATH) go get $(GOCOLLECTD)
	GOPATH=$(GOPATH) go get $(INFLUXDBGO)

build:
	GOPATH=$(GOPATH) go build -o $(BIN)/$(EXE)

clean: 
	rm -rf src
	rm -rf pkg
	rm -rf bin
