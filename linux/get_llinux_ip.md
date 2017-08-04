# Linux平台查询本机ip

@import "https://user-images.githubusercontent.com/1908863/28734960-d71fb3dc-73a8-11e7-8555-847373d1ed0f.gif" {width: 500, style: "position:relative; left: 50%; transform: translateX(-50%);"}

* Mac平台
```
  ifconfig | grep inet | grep -v inet6 | grep -v 127 | cut -d ' ' -f2
```

* Centos
```
  ip a | grep inet | grep -v inet6 | grep -v 127 | sed 's/^[ \t]*//g' | cut -d ' ' -f2
```

* 由于 linux 中得到的信息的最前面不是制表符而是空格，所以加上了 sed 's/^[ \t]*//g' 来清除开头的空格。

* 在/usr/local/bin目录下新建一个shell脚本，把以上内容复制到脚本中，然后给脚本赋予执行权限，则可以随时随点使用
```
  chmod +x /usr/local/bin/ip
```
