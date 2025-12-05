FROM golang:1.25.5@sha256:20b91eda7a9627c127c0225b0d4e8ec927b476fa4130c6760928b849d769c149

WORKDIR /go/src/app
COPY go.mod go.sum .
RUN go mod download

COPY . .

RUN GOBIN=/usr/local/bin go install ./cmd/rideshare
CMD ["/usr/local/bin/rideshare"]
