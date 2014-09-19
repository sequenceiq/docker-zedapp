FROM jpetazzo/nsenter:latest

ENV UPDATED 2014-09-19

ADD http://get.zedapp.org/zedrem-Linux-x86_64 /zedrem
RUN chmod +x /zedrem
#ADD zedrem-Linux-x86_64 /zedrem

# fix busybox: unrecognized option `--ignore-environment'
ADD https://raw.githubusercontent.com/jpetazzo/nsenter/bf9db374d983ffcdc9ec4b2cdf6e6fb1baa47dc0/docker-enter /
RUN chmod +x /docker-enter
ADD zed /
ADD installer /

EXPOSE 7337
CMD [ "/installer" ]
