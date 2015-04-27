# Postfix Mail Server

Run postfix with smtp auth in a docker container.

## Usage

$sudo docker run -it -p 25:25 -p 587:587 \  
  -v /mail:/var/mail \  
  -e hostname=hostname -e domainname=domainname \  
  -e users=usr0:uid0:pwd0,usr1:uid1:pwd1 \  
  classcat/postfix

## Variable

## Known Issues
