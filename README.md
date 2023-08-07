# README

项目基于 https://github.com/easzlab/kubeasz 项目进行扩展，在基于 k8s 安装的基础上，扩展了 Mysql Cluster（1主2从）, Redis cluster（3 shards, 3主3从）, mongo（shard集群），rabbitmq（集群模式）, nginx + keepalived (1主1备)，nacos cluster（依赖 mysql cluster + nginx）的一键安装部署脚本。

k8s 保留二进制方式部署，支持多个 Linux 发行版；其他中间件均基于 CentOs 7.9 版本进行部署，通过 rpm 文件安装。

# 安装指南
## 1.基础系统配置
- 准备若干台虚机
- 最小化安装 CentOS 7.9 Minimal
- 配置基础网络、更新源、SSH登录等
- 最好选用独立的一台机器做部署机，运行部署脚本文件，需要安装 ansible
- 文档中命令默认都需要root权限运行

<strong>注意:</strong> 确保在干净的系统上开始安装，不能使用曾经装过kubeadm或其他k8s发行版的环境

## 2.下载安装
- 有网环境可以直接拷贝 dev-deploy.zip 文件（大约 2M）到部署机器并解压到 /etc/kubeasz，确保 ezdown 和 ezctl 文件在 /etc/kubeasz 这一层级。无网环境则需要把提前下载好各个离线安装文件的脚本（合计大约 5G），再复制到 /etc/ezctl 目录
- 在部署节点上部署好各个机器的免密码登录

```
免密登录
# 更安全 Ed25519 算法
ssh-keygen -t ed25519 -N '' -f ~/.ssh/id_ed25519
# 或者传统 RSA 算法
ssh-keygen -t rsa -b 2048 -N '' -f ~/.ssh/id_rsa
 
ssh-copy-id $IPs #$IPs为所有节点地址包括自身，按照提示输入yes 和root密码
```
- 下载各类安装文件（离线安装跳过这一步）

```
离线安装文件下载
cd /etc/kubeasz
# 确保有执行权限
chmod +x ./ezdown ./ezctl
# 下载 ansible 安装文件
./ezdown -I
# 下载 k8s 安装文件
./ezdown -D
# 下载离线安装系统包
./ezdown -P
# 下载 harbor 离线安装包
./ezdown -R
# 下载中间件离线安装包
./ezdown -T
安装 ansible
```

- 安装 ansible
```
cd /etc/kubeasz
./ezctl ansible
```

- 创建集群配置实例

```
创建配置实例
ezctl new dev
2021-01-19 10:48:23 DEBUG generate custom cluster files in /etc/kubeasz/clusters/dev
2021-01-19 10:48:23 DEBUG set version of common plugins
2021-01-19 10:48:23 DEBUG cluster dev: files successfully created.
2021-01-19 10:48:23 INFO next steps 1: to config '/etc/kubeasz/clusters/dev/hosts'
2021-01-19 10:48:23 INFO next steps 2: to config '/etc/kubeasz/clusters/dev/config.yml'
```
然后根据提示配置'/etc/kubeasz/clusters/dev/hosts' 和 '/etc/kubeasz/clusters/dev/config.yml'：根据前面节点规划修改hosts 文件和其他集群层面的主要配置选项；其他集群组件等配置项可以在config.yml 文件中修改。

- 开始安装 如果你对集群安装流程不熟悉，请阅读项目首页 安装步骤 讲解后分步安装，并对 每步都进行验证 

```
# 一键安装 k8s 部分
ezctl setup dev all
 
# 或者分步安装 k8s，具体使用 ezctl help setup 查看分步安装帮助信息
# ezctl setup dev 01
# ezctl setup dev 02
# ezctl setup dev 03
# ezctl setup dev 04
...
 
# 一键安装 mysql cluster
ezctl setup dev mysql
# 一键安装 redis cluster
ezctl setup dev redis
# 一键安装 mongo cluster
ezctl setup dev mongo
# 一键安装 rabbitmq cluster
ezctl setup dev rabbitmq
# 一键安装 minio cluster
ezctl setup dev minio
# 一键安装 nginx cluster
ezctl setup dev nginx
# 一键安装 nacos cluster (注意：nacos 依赖 mysql 和 nginx ！！！)
ezctl setup dev nacos
# 安装 nacos 后更新 nginx 代理配置
ezctl setup dev update-nginx
 
# 一键安装 harbor
ezctl setup dev harbor
```
