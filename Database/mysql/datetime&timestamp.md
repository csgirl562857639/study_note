# MySQL DateTime和TimeStamp的区别

```
DateTime和TimeStamp列都可以存储相同的数据类型：时间和日期，精确到秒。

DateTime 8个字节，TimeStamp 4个字节

TimeStamp会根据时区变化，具有特殊的自动更新能力(设计不变的时间自读如create_date时须谨慎选择)

TimeStamp允许的时间范围要小得多(1970-2038)
```
