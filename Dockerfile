FROM golang:1.27.1-alpine AS builder

WORKDIR /app

COPY go.mod main.go ./

RUN CGO_ENABLED=0 go build -o /hello_gopher .

FROM scratch

COPY --from=builder /hello_gopher /hello_gopher

CMD ["/hello_gopher"]