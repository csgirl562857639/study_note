# Spring数据库事务(Transaction)

## 事务隔离级别(isolation)
    Spring事务隔离级别有5个，mysql数据库有4个。
    Spring相对于mysql多一个默认的隔离级别，对应的是数据库的默认隔离级别。如mysql默认事务隔离级别是可重复读。

## 事务超时时间(timeout)
    事务超时是指一个事务所允许最多执行的时间，如果超过这个时间事务还没有执行完，则回滚该事务。

    Spring事务的超时时间单位是秒
    默认超时时间是数据库设置的事务超时时间
    Mysql事务超时时间(innodb_lock_wait_timeout)默认50秒
    Mysql通过‘show variables like '%timeout%';’查询事务超时时间

## 是否只读(readOnly)
    默认为false(读写)

## 事务回滚规则(callback)
