# Linux平台安装redis

* 在redis官网下载redis包
>https://redis.io

* 或者在github下载redis源码包
>https://github.com/antirez/redis

* 下载完成后解压redis文件
>tar zxvf redis-4.0.1.tar.gz

* 解压后进入redis文件夹
>cd redis-4.0.1

* 编译安装
> make && make install

* 安装完成后进入utils目录
> cd utils

* 里面有install_server.sh文件，执行后一路回车键
> ./install_server.sh

* 会生成redis配置文件，redis启动脚本并启动redis
> /etc/redis/6379.conf  redis配置文件

 > /etc/init.d/redis_6379  redis启动脚本

* 附上完整的redis安装脚本

  <pre><code>
    #!/bin/sh
    wget http://download.redis.io/releases/redis-4.0.1.tar.gz &&
    tar zxvf redis-4.0.1.tar.gz &&
    cd redis-4.0.1 &&
    make &&
    make install &&
    cd utils &&
    echo | ./install_server.sh
  </code></pre>

* 如果想安装其他版本的redis或者升级redis版本，更改上面脚本中的redis版本号后直接执行即可
