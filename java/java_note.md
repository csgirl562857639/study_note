# My Java Note

## java基本数据类型

```
  byte：8位，最大存储数据量是255，存放的数据范围是-128~127之间
  short：16位，最大数据存储量是65536，数据范围是-32768~32767之间
  int：32位，最大数据存储容量是2的32次方减1，数据范围是负的2的31次方到正的2的31次方减1
  long：64位，最大数据存储容量是2的64次方减1，数据范围为负的2的63次方到正的2的63次方减1
  float：32位，数据范围在3.4e-45~1.4e38，直接赋值时必须在数字后加上f或F
  double：64位，数据范围在4.9e-324~1.8e308，赋值时可以加d或D也可以不加
  boolean：只有true和false两个取值
  char：16位，存储Unicode码，用单引号赋值
```

## switch的作用域
```
  char、byte、short、int、Character、Byte、Short、Integer、String、Enum
```
``` java
public class EnumSwitchTest {

  private static void test(EnumTest test) {
      switch (test) {
          case ONE:
              System.out.println("ONE");
              break;
          case TWO:
              System.out.println("TWO");
              break;
          case THREE:
              System.out.println("THREE");
              break;
          default:
              System.out.println("test");
      }
  }
}

enum EnumTest {
  ONE,
  TWO,
  THREE
}
```

## final

```
  使用final修饰一个变量时，变量的引用地址不变，变量所指对象的内容是可以变的
```

## 静态变量和实例变量的区别

```
  1、静态变量需用static修饰，实例变量则不需要
  2、静态变量也叫类变量，属于类，当类的字节码文件被加载时就会创建并分配空间，且只有当程序停止运行时才会被销毁，和类的生命周期一致
  3、实例变量属于类的实例，当创建了类的实例对象后才会分配空间
```
## 抽象类和普通类的区别

```
  抽象类不能实例化，允许有abstract方法
```

## 接口和抽象类的区别

```
  1、抽象类可以有构造方法，接口不能有构造方法
  2、抽象类可以有普通成员变量，接口没有普通成员变量
  3、抽象类可以有非抽象的普通方法，接口中所有的方法都是抽象的，不能有非抽象的普通方法
  4、抽象类中的方法访问类型可以有public、protected，接口中的方法只能是public abstract
  5、抽象类可以有静态方法，接口不能有静态方法
  6、一个类可以实现多个接口，但只能继承一个类
```

## 集合

```
  1、List、set继承自Collection，
```

## 内存泄漏
    内存泄漏是程序中已动态分配的堆内存由于某种原因未释放或无法释放、造成系统内存的浪费，导致程序运行速度减甚至系统奔溃等严重后果

## 脏数据
    系统中的数据不在指定的范围、对于实际业务毫无意义、数据可视非法、或者不符合当前业务逻辑的数据

## Map
    1、HashMap是无序的，LinkedHashMap和TreeMap是有序的
    2、