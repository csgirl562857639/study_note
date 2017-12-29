# Linux升级vim

* Linux系统默认安装vim，但版本较低。在GitHub<https://github.com/vim/vim>上下载源码并解压
```
  ./configure --prefix=/usr
  make
  make install
```

* 执行完后进入vim或vim --version查看最新安装的vim

* 可能出现问题及解决方案
```
  no terminal library found
  checking for tgetent()... configure: error: NOT FOUND!
      You need to install a terminal library; for example ncurses.
      Or specify the name of the library with --with-tlib.

  yum install ncurses-devel -y
```

* install_vim.sh
```shell
  wget https://github.com/vim/vim/archive/v8.0.1376.tar.gz &&
    tar zxvf v8.0.1376.tar.gz &&
    cd vim-8.0.1376 &&
    ./configure --prefix=/usr &&
    make &&
    make install &&
```
