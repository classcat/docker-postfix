# Postfix Mail Server
docker postfix

## Usage

docker run -it -p 25:25 -p 587:587 \  
  -v /mail:/var/spool/mail \  
  -e hostname=hostname -e domainname=domainname \  
  -e users=usr0:id0:pwd0,usr1:id1:pwd1 \  
  classcat/postfix
