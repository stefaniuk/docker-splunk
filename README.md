[![CircleCI](https://circleci.com/gh/stefaniuk/docker-splunk-indexer.svg?style=shield "CircleCI")](https://circleci.com/gh/stefaniuk/docker-splunk-indexer) [![Quay](https://quay.io/repository/stefaniuk/splunk-indexer/status "Quay")](https://quay.io/repository/stefaniuk/splunk-indexer)

Docker Splunk Indexer
=====================

`Dockerfile` to create a Docker image for [Splunk](http://www.splunk.com/).

Installation
------------

Automated builds of the image are available on [Docker Hub](https://hub.docker.com/r/stefaniuk/splunk-indexer/).

    docker pull stefaniuk/splunk-indexer

Alternatively you can build the image yourself.

    docker build --tag stefaniuk/splunk-indexer \
        github.com/stefaniuk/docker-splunk-indexer

Quickstart
----------

Start container using:

    docker run --detach --restart always \
        --name splunk-indexer \
        --hostname splunk-indexer \
        --publish 8000:8000 \
        stefaniuk/splunk-indexer
