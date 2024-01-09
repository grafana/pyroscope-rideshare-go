FROM golang:1.21.5

WORKDIR /go/src/app
COPY . .
RUN go build main.go
CMD ["./main"]
