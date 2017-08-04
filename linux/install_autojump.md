# Linux平台安装autojump

@import "https://user-images.githubusercontent.com/1908863/28734960-d71fb3dc-73a8-11e7-8555-847373d1ed0f.gif" {width: 500, style: "position:relative; left: 50%; transform: translateX(-50%);"}

* 安装autojump前需要先安装
```
  Python v2.6+
  zsh
```

* 下载地址 <https://github.com/wting/autojump>
* 解压后执行install.py脚本
```
  python ./install.py
```

* 执行完后提示
```
  Please manually add the following line(s) to ~/.zshrc:
  [[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh
```

* 意思就是把上面一段脚本copy到~/.zshrc中
```
  source ~/.zshrc
```

* 用起来
```
  j local
  j bin
  j usr
```
