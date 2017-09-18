# Docker时区差8小时解决办法

## 原因
    宿主机和虚拟机时区不一样

## 解决办法
  进入docker容器，在shell执行如下命令
```shell
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&
  echo 'Asia/Shanghai' > /etc/timezone
```
