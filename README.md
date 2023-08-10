# VPROFILE STACK
### VM Automated provisioning
App's stack:
1. Nginx: Web Service
2. Tomcat: Application Server
3. RabbitMQ: Broker/Queuing Agent
4. Memcache: DB Caching
5. MySQL: SQL Database
#

## Prerequisites
# 
- Oracle VM Virtualbox
- Vagrant plugins:
    - vagrant plugin install vagrant-hostmanager
    - vagrant plugin install vagrant-vbguest

## Deploy

```
- vagrant up
```

[!NOTE]
You need to clone the repo
