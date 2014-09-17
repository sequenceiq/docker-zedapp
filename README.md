This image helps to

## install zedapp

You can use zedapp as a *chrome plugin* or a *standalone* app. Downloads are
available at: [zedapp.org](http://zedapp.org/download/). I recommend to
the **standalone** version.

## install script

You have to install a helper script `zed` on the docker host, which knows how to
start the *zed-server* in a docker container.

Install the shell script into `/usr/local/bin` by:
```
docker run --rm -v /usr/local/bin:/target zed
```

## start session

To start a session for remote edit files in a container
```
zed <container> <directory>
```
