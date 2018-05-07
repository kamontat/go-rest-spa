FROM golang:1.8

WORKDIR /go

COPY . .

RUN go get -u github.com/gorilla/mux

WORKDIR /go/src/github.com/kamontat/go-rest-spa

RUN go install .

EXPOSE 8000

CMD ["/go/bin/go-rest-spa"]

# build by `docker build -t spa-go .`
# run by `docker run -it --rm -p 8000:8000 spa-go`
