# Docker与Spring Boot profiles

    在使用docker和spring boot时，关于spring.profiles.active如何配置的问题

## Spring配置文件配置
    在application配置文件中作如下配置：

  ```yml
    spring:
      profiles:
        active: test
  ```
    不同的环境改成相对应的值，打包后部署到docker容器

# java -jar直接启动

    java -jar直接启动应用是可以使用如下方式，不用考虑application文件配置的是什么值
```shell
  java -jar -Dspring.profiles.active=test app.jar
```
or

```shell
  java -jar app.jar --spring.profiles.active=test
```

# Dockerfile配置

```Dockerfile
  FROM java
  COPY app.jar app.jar
  RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
  VOLUME /tmp
  VOLUME /target
  EXPOSE 8080
  ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-Xms512m","-Xmx512m", "-Dspring.profiles.active=dev", "-jar","/app.jar"]
```

# Docker run 配置

```shell
  docker run -idt -p 8080:8080 -v app.jar:/app.jar -e "SPRING_PROFILES_ACTIVE=dev" --name app java
```

# docker compose 配置

```yml
app:
 image: java
 ports:
   - 8080:8080
 container_name: app
 volumes:
   - app.jar:/app.jar
 networks:
   - edjr
 environment:
   - SPRING_PROFILES_ACTIVE=prod
```

# 参考
* [链接1](https://segmentfault.com/a/1190000011367595)
* [链接2](https://yq.aliyun.com/articles/25408)
