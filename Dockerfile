FROM ubuntu
RUN apt-get update
RUN apt-get install apache2
RUN ls -l /home/ubuntu/jenkins/workspace/
ADD /home/ubuntu/jenkins/workspace/job1/ /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
