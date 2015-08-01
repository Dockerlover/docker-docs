# docker-gitbook

docker化gitbook应用，用于部署社区文档

## 镜像特点

- 2015/7/4 继承基础镜像docker-nodejs

## 部署社区文档的方法

- 获取docker-gitbook

            git clone https://github.com/Dockerlover/docker-gitbook.git
            cd docker-gitbook 
            
- 获取dockerdocs

            git submodule init
            git submodule update

- 构建docker-gitbook

            docker build -t docker-gitbook .

- 运行容器

            docker run -it -d --restart=always -p 4000:4000 docker-gitbook

- 运行其他gitbook项目只需替换docs文件夹下的内容，重新构建即可。



