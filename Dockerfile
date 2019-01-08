FROM golang:1.8

RUN go get -u golang.org/x/lint/golint

#WORKDIR /go/src/app
#COPY . .

#RUN go get -d -v ./...
#RUN go install -v ./...

#CMD ["app"]
