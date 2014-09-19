FROM jpetazzo/nsenter:latest

ENV UPDATED 2014-09-15

ADD http://get.zedapp.org/zedrem-Linux-x86_64 /zedrem
RUN chmod +x /zedrem
#ADD zedrem-Linux-x86_64 /zedrem

ADD zed /
ADD installer /

ENTRYPOINT [ "/installer" ]
