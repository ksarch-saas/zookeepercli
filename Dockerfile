FROM hub.c.163.com/zhongjianfeng/zookeeper:latest

MAINTAINER YanMing, yanming02@baidu.com

COPY ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
