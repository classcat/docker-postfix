# Postfix Mail Server

Run postfix mail server with **smtp auth**, a **submission port** and **spamassassin** in a docker container.

## Overview

Ubuntu Vivid/Trusty Mail Server images with :

+ postfix with smtp authentication and a submission port
+ spamassassin
+ supervisord
+ sshd

built on the top of the formal Ubuntu images.

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
-e password=(root password) \  
-e hostname=(FQDN of host) -e domainname=(domain name) \  
-e users=(usr0:uid0:pwd0,usr1:uid1:pwd1) \  
classcat/postfix
```

### example)  

```
$ sudo docker run -d --name postfix \  
-p 2022:22 -p 25:25 -p 587:587 \  
-v /mail:/var/mail \  
-e password=mypassword \  
-e hostname=mailsvr.classcat.com -e domainname=classcat.com \  
-e users=foo:1001:passwd,foo2:1002:passwd2 \  
classcat/postfix
```
```
$ sudo docker run -d --name postfix \  
-p 2022:22 -p 25:25 -p 587:587 \  
-v /mail:/var/mail \  
-e password=mypassword \  
-e hostname=mailsvr.classcat.com -e domainname=classcat.com \  
-e users=foo:1001:passwd,foo2:1002:passwd2 \  
classcat/postfix:trusty
```

## Variables

## Known Issues

+ DKIM to be supported.

## Reference

+ [classcat/dovecot](http://registry.hub.docker.com/u/classcat/dovecot/)
