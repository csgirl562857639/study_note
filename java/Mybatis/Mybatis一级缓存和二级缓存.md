# Mybatis一级缓存和二级缓存

## SqlSession
    引用官方文档中对这个接口作用的说明——SqlSession完全包含了面向数据库执行SQL命令所需的所有方法。你可以通过SqlSession实例来直接执行已映射的SQL语句，也可以通过SqlSession得到映射和管理事务。

## namespace
    这里提到的namespace指代的是在应用中配置的mapper配置文件中的namespace。

```Java
  <mapper namespace="com.yhl.modules.biz.dao.ArticleDao">
```

## 一级缓存
    SqlSession维度的缓存，也就是每个SqlSession独享的缓存，我们在使用Mybatis的时候，通常会使用SqlSession的getMapper方法获取到映射。

  ```Java
    UserDao userDao = sqlSession.getMapper(UserDao.class);
  ```
    获取到映射之后执行相关方法进行数据库操作，获取到的映射对象是通过动态代理生成的代理类MapperProxy对象，Mybatis的数据库操作是通过Executor来执行，一级缓存也是通过Executor来维护，每个SqlSession都会持有一个Executor：

## 二级缓存
    namespace维度的缓存。上文提到SqlSession中会持有一个Executor，在构建SqlSession的时候，Mybatis会根据cacheEnable选项来确定是否使用一个缓存的Executor，也就是CachingExecutor。cacheEnable可以配置，默认为true：
