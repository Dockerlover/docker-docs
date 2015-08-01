# docker-docs

docker化gitbook应用，用于部署社区文档

## 镜像特点

- 2015/7/4 继承基础镜像docker-nodejs

## 部署社区文档的方法

- 获取dockerdocs

            git clone https://github.com/liuhong1happy/dockerdocs.git

- 获取docker-docs

            git clone https://github.com/Dockerlover/docker-docs.git
            cp -R dockerdocs docker-docs
            cd docker-docs 
            docker build -t docker-docs .
