FROM golang:1.26.3@sha256:313faae491b410a35402c05d35e7518ae99103d957308e940e1ae2cfa0aac29b

WORKDIR /go/src/app
COPY go.mod go.sum .
RUN go mod download

COPY . .

RUN GOBIN=/usr/local/bin go install ./cmd/rideshare
CMD ["/usr/local/bin/rideshare"]
