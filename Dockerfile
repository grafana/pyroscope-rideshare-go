FROM golang:1.21.8

WORKDIR /go/src/app
COPY go.mod go.sum .
RUN go mod download

COPY . .

RUN GOBIN=/usr/local/bin go install ./cmd/rideshare
CMD ["/usr/local/bin/rideshare"]
