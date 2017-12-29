# Docker使用阿里云镜像加速器

## 获取加速其地址
  在[阿里云容器镜像服务](https://cr.console.aliyun.com/?spm=5176.1971733.0.2.IXMJ9l&accounttraceid=99e61de8-d942-4bbe-87ea-e0ca16d59768#/accelerator)获取

## 安装/升级docker客户端
    推荐安装1.10.0以上的Docker客户端

## 配置镜像加速器
    在/etc/docker目录下新建daemon.json文件
    文件内容如下：

  ```json
  {
  "registry-mirrors": ["https://bnv5j857.mirror.aliyuncs.com"]
  }
  ```

    然后执行如下命令：
  ```shell
    systemctl daemon-reload
    systemctl restart docker
  ```
