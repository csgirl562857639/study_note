# 我的git笔记

## tag
> Git 中的tag指向一次commit的id，通常用来给开发分支做一个标记，如标记一个版本号

```
  git tag   --列出标签
  git tag -a v1.0.0 -m 'version 1.0.0'    --打标签
  git push origin --tags    --推送标签到远程
  git tag -d v1.0.0   --删除标签
  git push origin :refs/tags/v1.0.0   --删除远程标签
  git checkout v1.0.0   --切换到v1.0.0
```
