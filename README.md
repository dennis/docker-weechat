docker-weechat
==============

This repo provides the steps necessary to build a
[weechat](http://www.weechat.org/) docker image.

Docker registry
---------------

This image is available at: [hub.docker.com/r/dennismp/weechat/](https://hub.docker.com/r/dennismp/weechat/)

Build manually
--------------

```
$ git clone https://github.com/dennis/docker-weechat
$ docker build --rm -t dennismp/weechat .
```

Running
-------

Standalone:
```
docker run -ti --rm --name=weechat -v /var/volumes/weechat:/weechat dennismp/weechat
```

or linked with bitlbee (use hostname 'bitlbee' when configuring weechat)
```
docker run -ti --rm --name=weechat --link=bitlbee -v /var/volumes/weechat:/weechat dennismp/weechat
```
