FROM golang:stretch

EXPOSE 8001:8001

ADD ./tcp-rand.go /go/tcp-rand.go