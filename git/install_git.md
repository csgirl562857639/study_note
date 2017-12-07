# Linux安装或替换系统自带git

@import "https://user-images.githubusercontent.com/1908863/28734960-d71fb3dc-73a8-11e7-8555-847373d1ed0f.gif" {width: 500, style: "position:relative; left: 50%; transform: translateX(-50%);"}

* 一般Linux系统会默认安装git，但版本较低，如果想体验高版本或替换原来的git，先去GitHub<https://github.com/git/git>下载源码包，然后解压,z执行以下命令
```
  make configure
  ./configure --prefix=/usr
  make
  make install
```

* 安装过程中可能会出现错误，一般都是缺少依赖软件导致的。根据打印的错误信息安装所需软件即可

* install git bash
```shell
#!/bin/sh

wget https://github.com/git/git/archive/v2.15.1.tar.gz &&
  tar zxvf v2.15.1.tar.gz &&
  cd git-2.15.1 &&
  make configure &&
  ./configure --prefix=/usr &&
  make &&
  make install
```
