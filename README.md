# Postfix Mail Server

Run postfix with smtp auth and a submission port in a docker container.

## Usage

`$ sudo docker run -it --name postfix \
  -p 25:25 -p 587:587 \  
  -v /mail:/var/mail \  
  -e hostname=mail.classcat.com -e domainname=classcat.com \  
  -e users=usr0:uid0:pwd0,usr1:uid1:pwd1 \  
  classcat/postfix`

## Variable

## Known Issues

* spamassassin should be supported.

