FROM golang:1.25.4@sha256:698183780de28062f4ef46f82a79ec0ae69d2d22f7b160cf69f71ea8d98bf25d

WORKDIR /go/src/app
COPY go.mod go.sum .
RUN go mod download

COPY . .

RUN GOBIN=/usr/local/bin go install ./cmd/rideshare
CMD ["/usr/local/bin/rideshare"]
