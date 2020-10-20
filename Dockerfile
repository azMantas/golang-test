FROM golang

WORKDIR ./app
COPY . .

RUN go mod download
RUN go build

EXPOSE 10000

CMD ./golang-test
