# Linux Command

## sed
    1、sed -i 's/被替换字符/要替换字符/g' 文件名
       sed -i 's/a/b/g' pom.xml
       sed -i "" 's/a/b/g' pom.xml (mac平台需要加“”)

## 查看端口占用
```shell
  lsof -i:8080
  COMMAND     PID USER   FD   TYPE  DEVICE SIZE/OFF NODE NAME
  docker-pr 26790 root    4u  IPv6 3643427      0t0  TCP *:8010 (LISTEN)
```
