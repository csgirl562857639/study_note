# install mysql on linux
## 在centos上安装mysql
  1、在终端执行以下命令
  ```shell
    yum repolist all | grep mysql
  ```
  2、如果没有返回则在/etc/yum.repos.d/mysql-community.repo文件中添加以下内容
  ```shell
    [mysql57-community]
    name=MySQL 5.7 Community Server
    baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/6/$basearch/
    enabled=1
    gpgcheck=1
    gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
  ```
  3、查看刚才添加的内容是否生效
  ```shell
    yum repolist enabled | grep mysql
  ```
  4、install mysql
  ```shell
    yum install mysql-community-server
  ```
