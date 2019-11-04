ARG BASE_IMAGE
FROM ${BASE_IMAGE}
#设置工作目录
WORKDIR $GOPATH/src/github.com/test
#将服务器的go工程代码加入到docker容器中
ADD . $GOPATH/src/github.com/test
#go构建可执行文件
#RUN go build .
ENTRYPOINT  ["./test"]