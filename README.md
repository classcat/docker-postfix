# Postfix Mail Server

Run postfix mail server with **smtp auth**, a **submission port** and **spamassassin** in a docker container.

## Summary

Ubuntu Vivid/Trusty Mail Server images with :

+ postfix with smtp authentication and a submission port
+ spamassassin
+ supervisord
+ sshd

built on the top of the formal Ubuntu images.

## Maintainer

[ClassCat Co.,Ltd.](http://www.classcat.com/) (This website is written in Japanese.)

## TAGS

+ latest - vivid
+ vivid
+ trusty

## Pull Image

```
$ sudo docker pull classcat/postfix
```

## Usage

```
$ sudo docker run -d --name (container name) \  
-p 2022:22 -p 25:25 -p 587:587 \  
-v (dir on host):/var/mail \  
-e ROOT_PASSWORD=(root password) \  
-e SSH_PUBLIC_KEY="ssh-rsa xxx" \  
-e HOSTNAME=(FQDN of host) -e DOMAINNAME=(domain name) \  
-e USERS=(usr0:uid0:pwd0,usr1:uid1:pwd1) \  
classcat/postfix
```

### example)  

```
$ sudo docker run -d --name postfix \  
-p 2022:22 -p 25:25 -p 587:587 \  
-v /mail:/var/mail \  
-e ROOT_PASSWORD=mypassword \  
-e HOSTNAME=mailsvr.classcat.com -e DOMAINNAME=classcat.com \  
-e USERS=foo:1001:passwd,foo2:1002:passwd2 \  
classcat/postfix
```
```
$ sudo docker run -d --name postfix \  
-p 2022:22 -p 25:25 -p 587:587 \  
-v /mail:/var/mail \  
-e ROOT_PASSWORD=mypassword \  
-e HOSTNAME=mailsvr.classcat.com -e DOMAINNAME=classcat.com \  
-e USERS=foo:1001:passwd,foo2:1002:passwd2 \  
classcat/postfix:trusty
```

## Variables

## Known Issues

+ DKIM to be supported.

## Reference

+ [classcat/dovecot](http://registry.hub.docker.com/u/classcat/dovecot/)
