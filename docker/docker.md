docker run -idt  --privileged=true -v /data/docker/yzd/webapps:/usr/local/tomcat/webapps/ -v /data/tomcat/logs-yzd:/usr/local/tomcat/logs -p 8087:8080 --net dockernet --ip 172.18.0.7 --name yzd-api tomcat

curl 192.168.0.6:8080/yhl-api//captcha/getImageKey


docker run -idt  --privileged=true -v /data/docker/app/edjr/api:/usr/local/tomcat/webapps/ -v /data/docker/log/edjr/api:/usr/local/tomcat/logs -v /data/docker/static:/data/static -p 8087:8080 --net edjrnet --ip 172.18.0.7 --name edjr-api tomcat

docker run -idt  --privileged=true -v /data/docker/app/edjr/mgr:/usr/local/tomcat/webapps/ -v /data/docker/log/edjr/mgr:/usr/local/tomcat/logs -v /data/docker/static:/data/static -p 8086:8080 --net edjrnet --ip 172.18.0.10 --name edjr-mgr tomcat

docker run -idt  --privileged=true -v /data/docker/app/edjr/api:/usr/local/tomcat/webapps/ -v /data/docker/log/edjr/api:/usr/local/tomcat/logs -p 127.0.0.1:8087:8080 --name edjr-api tomcat

docker run -idt  --privileged=true -v /data/docker/app/yzd/api:/usr/local/tomcat/webapps/ -v /data/docker/log/yzd/api:/usr/local/tomcat/logs -p 8088:8080 --net edjrnet --ip 172.18.0.8 --name yzd-api tomcat

docker run -idt  --privileged=true -v /data/docker/config-server:/usr/local/tomcat/webapps/ -v /data/tomcat/logs-config-server:/usr/local/tomcat/logs -p 8088:8080 --net dockernet --ip 172.18.0.5 --name config-server tomcat

docker run -idt  --privileged=true -v /data/docker/config-server:/usr/local/tomcat/webapps/ -v /data/tomcat/logs-config-server1:/usr/local/tomcat/logs -p 8089:8080 --name config-server1 tomcat

docker run -idt --privileged=true -p 6379:6379 --net edjrnet --ip 172.18.0.6 --name edjr-redis redis

docker run -it --link edjr-redis:redis --rm redis redis-cli -h redis -p 6379

docker run -idt -p 9200:9200 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" --name elasticsearch elasticsearch

docker run -idt -p 5601:5601 -e ELASTICSEARCH_URL=http://10.251.199.113:9200 --name kibana kibana


docker network create --subnet=172.18.0.0/20 edjrnet

123.57.177.247

iptables -t nat -I POSTROUTING -o eth0 -d  0.0.0.0/0 -s 172.18.0.7  -j SNAT --to-source 123.57.177.247
iptables -t nat -I POSTROUTING -o eth0 -d  0.0.0.0/0 -s 172.18.0.5  -j SNAT --to-source 123.57.177.247
iptables -t nat -I POSTROUTING -o eth0 -d  0.0.0.0/0 -s 172.18.0.7  -j SNAT --to-source 10.251.199.113
iptables -t nat -I POSTROUTING -o eth0 -d  0.0.0.0/0 -s 172.18.0.6  -j SNAT --to-source 10.251.199.113

 curl 123.57.177.247:8087/ysp-api/captcha/getImageKey
 curl 10.251.199.113:8087/ysp-api/captcha/getImageKey
 curl a.jdf.8788.test.edianlicai.com/captcha/getImageKey

 docker run -v /myredis/conf/redis.conf:/usr/local/etc/redis/redis.conf --name myredis redis redis-server /usr/local/etc/redis/redis.conf

elasticsearch {
		hosts => ["123.57.177.247:9200"]
		action => "index"
		codec => "rubydebug"
		index =>  "%{type}-%{+YYYY.MM.dd}"
		template_name => "%{type}"
	}

PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"

cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone

-Dspring.profiles.active=dev

java -jar yzd-api.jar --spring.profiles.active=dev --server.port=9999

 docker run --name my-nginx -v /host/path/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx nginx-debug -g 'daemon off;'

docker run -idt -p 80:80 -p 443:443 -v /data/docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf:ro -v /data/docker/static/www:/www -v /data/docker/static/www:/wwwlogs -v /data/docker/static:/data/static --net edjrnet --ip 172.18.0.9 --name my-nginx nginx

http://123.57.173.227:8088/config-server/application/test

	emergency! eureka may be incorrectly claiming instances are up when they're not. renewals are lesser than threshold and hence the instances are not being expired just to be safe.

docker run -idt  --privileged=true -v /data/docker/app/spring/eureka:/usr/local/tomcat/webapps/ -v /data/docker/log/spring/eureka:/usr/local/tomcat/logs -v /data/docker/static:/data/static -p 8070:8080 --net edjrnet --ip 172.18.0.3 --name eureka tomcat

docker run -idt  --privileged=true -v /data/docker/app/spring/sms:/usr/local/tomcat/webapps/ -v /data/docker/log/spring/sms:/usr/local/tomcat/logs -v /data/docker/static:/data/static -p 8071:8080 --net dockernet --ip 172.18.0.4 --name sms tomcat

123.57.173.227:8070/eureka

5CB208BB460D3DEC

docker run  -p 8099:8080 -t eureka
【金小觅】您的验证码是：111222



docker tag 14be29d305db eureka:latest

$ docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven maven:3.2-jdk-7 mvn clean install

docker run -idt --hostname my-rabbit --name some-rabbit -e RABBITMQ_DEFAULT_USER=heihaier -e RABBITMQ_DEFAULT_PASS=Aina101706  --net edjrnet --ip 172.18.0.5 rabbitmq:3-management

docker run -idt --hostname my-rabbit --name some-rabbit -e RABBITMQ_DEFAULT_USER=heihaier -e RABBITMQ_DEFAULT_PASS=Aina101706  rabbitmq:3-management

watch -n1 "date '+%D%n%T' | figlet -k"

curl -L https://raw.githubusercontent.com/docker/compose/1.18.0/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
