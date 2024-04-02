# 基础镜像
FROM alpine:latest

LABEL maintainer="pdzhou"

WORKDIR /root

# 将目录下的文件copy到镜像中
COPY ./clash /root

RUN apk --no-cache add curl wget nftables nano bash \
    && wget https://fastly.jsdelivr.net/gh/juewuy/ShellCrash@master/install.sh && (echo "1"; sleep 5; echo "1"; sleep 5; echo "1"; sleep 5; echo "1") | sh install.sh


# 映射端口
EXPOSE 7890 9999

#启动命令
ENTRYPOINT ["bash","clashrun.sh"]
