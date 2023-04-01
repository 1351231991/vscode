FROM golang

WORKDIR /workspace

RUN cp /usr/local/go/bin/* /usr/local/bin

COPY code-server-4.11.0-linux-amd64.tar.gz .
RUN tar zxvf code-server-4.11.0-linux-amd64.tar.gz

ENV GO111MODULE on 
ENV GOPROXY https://goproxy.cn

ENV PASSWORD abc123

WORKDIR /workspace/code-server-4.11.0-linux-amd64

EXPOSE 9999


CMD ["./code-server", "--port", "9999", "--host", "0.0.0.0", "--auth", "password"]
