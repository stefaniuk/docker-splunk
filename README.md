[![CircleCI](https://circleci.com/gh/stefaniuk/docker-splunk.svg?style=shield "CircleCI")](https://circleci.com/gh/stefaniuk/docker-splunk) [![Quay](https://quay.io/repository/stefaniuk/splunk/status "Quay")](https://quay.io/repository/stefaniuk/splunk)

Docker Splunk
=============

`Dockerfile` to create a Docker image for [Splunk](http://www.splunk.com/).

Installation
------------

Automated builds of the image are available on [Docker Hub](https://hub.docker.com/r/stefaniuk/splunk/).

    docker pull stefaniuk/splunk

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

- Configure indexer
- Configure forwarder
