FROM centos:7
RUN  yum -y update
RUN yum -y install epel-release
RUN  yum -y install nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/*
COPY ./index.html /usr/share/nginx/html
#RUN systemctl start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]