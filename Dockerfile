FROM jpetazzo/nsenter:latest

ENV UPDATED 2014-09-19

ADD http://get.zedapp.org/zedrem-Linux-x86_64 /zedrem
RUN chmod +x /zedrem
#ADD zedrem-Linux-x86_64 /zedrem

# fix busybox: unrecognized option `--ignore-environment'
ADD https://raw.githubusercontent.com/jpetazzo/nsenter/c01cf225b5ac2bd1bc5fd022de2746e131157608/docker-enter /
RUN chmod +x /docker-enter
ADD zed /
ADD installer /

EXPOSE 7337
CMD [ "/installer" ]
