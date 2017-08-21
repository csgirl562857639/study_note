# 关于Mybatis#和$的区别
## ‘#’

```
  将传入的数据都当成一个字符串，会对传入的数据自动加上引号
  类似jdbc中的PrepareStatement，预编译参数，防止sql注入
```

## $

```
  将传入的数据直接显示生成在SQL中
  类似jdbc中的Statement，有sql注入风险
```

## Notice
```
  能用#的地方就不要使用$，写order by子句的时候应该用$而不是#
```
