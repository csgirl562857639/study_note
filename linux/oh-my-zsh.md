# 安装Oh my zsh后更改服务器登录用户显示

@import "https://user-images.githubusercontent.com/1908863/28734960-d71fb3dc-73a8-11e7-8555-847373d1ed0f.gif" {width: 500, style: "position:relative; left: 50%; transform: translateX(-50%);"}

* Linux平台安装oh my zsh后不显示登录用户名和机器名，可以在~/.zshrz文件最后一行添加如下代码，退出重新登录即可显示登录用户名和机器名

```
  PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"
```
