# Docker时区差8小时解决办法

## 原因
    宿主机和虚拟机时区不一样

## 解决办法
```shell
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&
  echo 'Asia/Shanghai' > /etc/timezone
```
