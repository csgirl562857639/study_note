# DataBase Note

## Explain

## 乐观锁悲观锁

>InnoDB存储引擎中有页（Page）的概念，页是其磁盘管理的最小单位。InnoDB存储引擎中默认每个页的大小为16KB，可通过参数innodb_page_size将页的大小设置为4K、8K、16K，在MySQL中可通过如下命令查看页的大小：

```MySQL
  show variables like 'innodb_page_size';
```

## 索引
    1、like可以使用索引，like ‘12%’可以， ’%12%’ 不可以。
    2、in 不能使用索引
    3、

## 慢sql优化
    1、表设计：考察字符和数字字段定义，字符集大小写校验，时间字段存储。
    2、驱动表：考察多表join时候最优的连接顺序。
    3、索引优化：考察索引消除排序以，索引隐式转换，覆盖索引避免回表的问题
    4、执行计划：使用explain extended获取SQL执行计划中的异常点。
