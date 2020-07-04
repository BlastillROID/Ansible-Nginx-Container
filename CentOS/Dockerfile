FROM centos:7
RUN  yum -y update
RUN yum -y install epel-release
RUN  yum -y install nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/*
COPY ./generate_index.sh /
RUN bash /generate_index.sh
ENTRYPOINT [ "nginx", "-g", "daemon off;"]
