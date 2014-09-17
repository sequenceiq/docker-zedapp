This image aims to help use [zedapp](http://zedapp.org/) to edit files inside
of running docker containers. Its a replacement of the usual process:
*ssh + vi*. Under the hood its uses jpetazzo's [nsenter](https://github.com/jpetazzo/nsenter)

## install zedapp

You can use zedapp as a *chrome plugin* or a *standalone* app. Downloads are
available at: [zedapp.org](http://zedapp.org/download/). I recommend to
the **standalone** version.

## install script

You have to install a helper script `zed` on the docker host, which knows how to
start the *zed-server* in a docker container.

Install the shell script into `/usr/local/bin` by:
```
docker run --rm -v /usr/local/bin:/target sequenceiq/zedapp
```

## start session

To start a session for remote edit files in a container
```
zed <container> <directory>
```

This will:
- start a `zed-server` if not already running.
- print out the zed *remote-url* you have to copy-paste into zedapp.
