FROM golang:1.8

COPY . .

WORKDIR src/github.com/kamontat/go-rest-spa

RUN go get -u github.com/gorilla/mux

RUN go install .

EXPOSE 8000

CMD ["/go/bin/go-rest-spa"]