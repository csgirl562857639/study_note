# Linux平台安装nginx

* 下载nginx源码包，并解压，安装nginx需要先安装PERC库和Openssl

* yum安装PERC
```
  yum install -y pcre pcre-devel
```

* yum暗转Openssl
```
  yum install -y openssl openssl-devel
```

* 安装后在nginx目录下执行
```
  ./configure --prefix=/usr/local
  make
  make install
```

* 执行完成后会显示nginx相关文件的目录

* nginx常用命令
```
  nginx -c /usr/local/nginx/conf/nginx.conf   --start nginx
  nginx -s reload   --reload nginx
  nginx -s stop     --stop nginx
```
