FROM golang:1.16.2-buster
WORKDIR /go/src
COPY ./src .
RUN go get -u github.com/cosmtrek/air && \
  go build -o /go/bin/air github.com/cosmtrek/air && \
  go get -u github.com/gin-gonic/gin
CMD ["air", "-c", ".air.toml"]