## 这是什么

这是一个在docker中运行subDomainBrute的images

## 什么是subDomainBrute

["subDomainsBrute"](https://github.com/lijiejie/subDomainsBrute)

## 如何运行

docker4subDomainBrute选择将暴力破解的结果输出到屏幕上，而不是保持在文件中

所以需要一个-e来指定额外的参数

注意:
1、-o参数已经写死在dockerifle里，请勿重复制定

2、target也就是domain为必须参数也就是必须指定

3、其余线程等参数可自由发挥

```
docker run --rm -e "OPTIONS=baidu.com --full" nancheal/docker4subdomainbrute
```
