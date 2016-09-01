FROM stefaniuk/ubuntu:16.04-20160901
MAINTAINER daniel.stefaniuk@gmail.com
# SEE: https://github.com/outcoldman/docker-splunk/blob/master/splunk/Dockerfile

ARG APT_PROXY
ENV SPLUNK_VERSION="6.4.3" \
    SPLUNK_BUILD="b03109c2bad4" \
    SPLUNK_URL="https://download.splunk.com/products/splunk/releases" \
    SPLUNK_HOME=/opt/splunk \
    SPLUNK_PASSWORD="admin"

RUN set -ex \
    \
    && if [ -n "$APT_PROXY" ]; then echo "Acquire::http { Proxy \"$APT_PROXY\"; };" >> /etc/apt/apt.conf.d/00proxy; fi \
    && apt-get --yes update \
    && apt-get --yes install \
        libgssapi-krb5-2 \
    && wget -O \
        /tmp/splunk-$SPLUNK_VERSION-$SPLUNK_BUILD-Linux-x86_64.tgz \
        $SPLUNK_URL/$SPLUNK_VERSION/linux/splunk-$SPLUNK_VERSION-$SPLUNK_BUILD-Linux-x86_64.tgz \
    && wget -O \
        /tmp/splunk-$SPLUNK_VERSION-$SPLUNK_BUILD-Linux-x86_64.tgz.md5 \
        $SPLUNK_URL/$SPLUNK_VERSION/linux/splunk-$SPLUNK_VERSION-${SPLUNK_BUILD}-Linux-x86_64.tgz.md5 \
    && (cd /tmp && md5sum -c splunk-$SPLUNK_VERSION-$SPLUNK_BUILD-Linux-x86_64.tgz.md5) \
    && mkdir -p $SPLUNK_HOME \
    && tar xzf /tmp/splunk-$SPLUNK_VERSION-$SPLUNK_BUILD-Linux-x86_64.tgz --strip 1 -C $SPLUNK_HOME \
    \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/* \
    && rm -f /etc/apt/apt.conf.d/00proxy

VOLUME [ "/opt/splunk/var" ]
EXPOSE 1514 8000 8088 8089 8191 9997

COPY assets/sbin/entrypoint.sh /sbin/entrypoint.sh
