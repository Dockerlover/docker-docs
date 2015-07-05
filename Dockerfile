# 基础镜像 
FROM docker-nodejs
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID docker-docs
# 添加默认依赖包calibre gitbook
RUN npm install -g gitbook@1.3.4
RUN apt-get install -y calibre
COPY dockerdocs/. /gitbook
# 暴露4000
EXPOSE 4000
# 配置supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 启动supervisord
CMD ["/usr/bin/supervisord"]
