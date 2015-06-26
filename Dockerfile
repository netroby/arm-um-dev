FROM armbuild/ubuntu:vivid

RUN apt-get update -qq -y &&
RUN apt-get install -qq -y  vim-nox mysql-server curl
ADD ./init-mysql.sh /root/init-mysql.sh
ADD ./bashrc /root/.bashrc
ADD ./my.cnf /etc/my.cnf
RUN chmod a+x /root/init-mysql.sh
