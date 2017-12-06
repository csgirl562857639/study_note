# 修改git Remote url

**当git项目的remote url发生变化后，不想删除原来的项目重新clone，可以通过修改git conf文件**

* 进入项目的根目录，列出所有隐藏文件，会有一个‘.git’的目录
```
    ls -a
```

* 进入'.git'目录后，有一个'config'文件
```
[core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
  ignorecase = true
  precomposeunicode = true
[remote "origin"]
  url = https://github.com/abc.git
  fetch = +refs/heads/*:refs/remotes/origin/*
  [branch "master"]
  remote = origin
  merge = refs/heads/master
```

* 替换‘config’文件url的值为新的url即可
