[![Circle CI](https://circleci.com/gh/stefaniuk/docker-splunk.svg?style=shield "CircleCI")](https://circleci.com/gh/stefaniuk/docker-splunk)&nbsp;[![Size](https://images.microbadger.com/badges/image/stefaniuk/splunk.svg)](http://microbadger.com/images/stefaniuk/splunk)&nbsp;[![Version](https://images.microbadger.com/badges/version/stefaniuk/splunk.svg)](http://microbadger.com/images/stefaniuk/splunk)&nbsp;[![Commit](https://images.microbadger.com/badges/commit/stefaniuk/splunk.svg)](http://microbadger.com/images/stefaniuk/splunk)&nbsp;[![Docker Hub](https://img.shields.io/docker/pulls/stefaniuk/splunk.svg)](https://hub.docker.com/r/stefaniuk/splunk/)

Docker Splunk
=============

`Dockerfile` to create a Docker image for [Splunk](http://www.splunk.com/).

Installation
------------

Builds of the image are available on [Docker Hub](https://hub.docker.com/r/stefaniuk/splunk/).

    docker pull stefaniuk/splunk:latest

Alternatively you can build the image yourself.

    docker build --tag stefaniuk/splunk \
        github.com/stefaniuk/docker-splunk

Quickstart
----------

Start container using:

    docker run --detach --restart always \
        --name splunk \
        --hostname splunk \
        --publish 8000:8000 \
        stefaniuk/splunk

Todo
----

- Configuration example of indexer
- Configuration example of forwarder
