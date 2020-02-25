## 官网地址([http://www.dzzoffice.com](http://www.dzzoffice.com/))

## 当前镜像基于最新社区版 v2.02 构建。

## 快速部署

### 部署安装Mysql 5.7数据库

```bash
docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root_password mysql:5.7.27
```

如需做数据持久化存储，可加参数`-v $PWD:/var/lib/mysql`挂载数据卷到宿主机上，避免容器删除数据丢失。

### 部署安装DzzOffice

```bash
docker run -d --name dzzoffice -p 80:80 land007/dzzoffice:latest
```

如需做数据持久化存储，可加参数`-v $PWD:/var/www/html/data`挂载数据卷到宿主机上，避免容器删除数据丢失。

- 注意：挂载数据卷后，需要使用命令`docker exec -it dzzoffice bash` 进入容器内，执行命令 `chown -R www-data:www-data /var/www/html/data` 给data目录读写权限
