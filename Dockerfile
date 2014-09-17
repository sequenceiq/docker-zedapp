FROM ubuntu

ENV UPDATED 2014-09-15
ADD http://get.zedapp.org/zedrem-Linux-x86_64 /zedrem
#ADD zedrem-Linux-x86_64 /zedrem

ADD installer /installer
ADD zed /zed

ENTRYPOINT [ "/installer" ]
