FROM golang:1.12-alpine

ADD . /go/src/app

WORKDIR /go/src/app

RUN GOOS=linux GOARCH=386 go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
