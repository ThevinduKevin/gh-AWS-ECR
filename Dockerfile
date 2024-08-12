FROM golang:1.17-bluster AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /gh-AWS-ECR

FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /gh-AWS-ECR /gh-AWS-ECR

USER nonroot:nonroot

ENTRYPOINT [ "/gh-AWS-ECR" ]