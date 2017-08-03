# Linux平台查询本机ip

* Mac平台
<pre><code>
ifconfig | grep inet | grep -v inet6 | grep -v 127 | cut -d ' ' -f2
</code></pre>

* Centos
<pre><code>
  ip a | grep inet | grep -v inet6 | grep -v 127 | sed 's/^[ \t]*//g' | cut -d ' ' -f2
</code></pre>

* 由于 linux 中得到的信息的最前面不是制表符而是空格，所以加上了 sed 's/^[ \t]*//g' 来清除开头的空格。

* 在/usr/local/bin目录下新建一个shell脚本，把以上内容复制到脚本中，然后给脚本赋予执行权限，则可以随时随点使用
> chmod +x /usr/local/bin/ip
