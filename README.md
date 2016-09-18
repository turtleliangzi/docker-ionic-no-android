> 用dockerfile搭建基于ubuntu的ionic1的开发环境镜像
本镜像没安装android sdk环境

## 一、下载
```
git clone https://github.com/turtleliangzi/docker-ionic.git
```

## 二、build

```
docker build -t ionic:1.0 .

```
其中ionic为镜像名，1.0为版本号

## 三、往宿主机上的ionic项目路径中添加ionic项目

本实例的ionic项目路径为/root/docker_project/ionic

```
git clone https://github.com/turtleliangzi/ionic1_project.git
```
## 四、运行

```
docker run -id -p 8100:8100 -p 35729:35729 -v /root/docker_project/ionic:/root/myApp ionic:1.0

```

其中/root/docker_project/ionic为宿主机上的ionic项目路径，/root/myApp为docker镜像上的ionic项目路径



## 五、测试

在浏览器中访问http://0.0.0.0:8100

