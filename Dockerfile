FROM alpine:3.12.0
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG TEAMCITY_VERSION=2020.1

ENV TEAMCITY_DATA_PATH=/data/teamcity_server/datadir \
    TEAMCITY_DIST=/opt/teamcity \
    TEAMCITY_LOGS=/opt/teamcity/logs \
    TEAMCITY_SERVER_MEM_OPTS="-Xmx4g -XX:ReservedCodeCacheSize=1024m" \
    LANG=C.UTF-8

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/bin \
    JAVA_TOOL_OPTIONS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap" \
    GLIBC_REPO=https://github.com/sgerrand/alpine-pkg-glibc \
    GLIBC_VERSION=2.31-r0

RUN set -ex ;\
    apk add libstdc++ curl ca-certificates bash git mercurial ;\
    wget -q https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -O /etc/apk/keys/sgerrand.rsa.pub ;\
    for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do curl -sSL ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done ;\
    apk add /tmp/*.apk ;\
    rm -v /tmp/*.apk ;\
    ( /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true ) ;\
    echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh ;\
    /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib ;\
    apk add --no-cache openjdk8-jre ;\
    java -version ;\
    sed -i s/#networkaddress.cache.ttl=-1/networkaddress.cache.ttl=10/ $JAVA_HOME/jre/lib/security/java.security ;\
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf ;\
    apk del curl glibc-i18n ;\
    rm -rf /tmp/* /var/cache/apk/*

RUN addgroup -S -g 1000 tcuser  ;\
    adduser -S -u 1000 -G tcuser tcuser ;\
    echo '[ ! -z "$TERM" -a -x /welcome.sh -a -x /welcome.sh ] && /welcome.sh' >> /etc/bash.bashrc ;\
    mkdir -p /opt/teamcity /opt/teamcity/logs /data/teamcity_server/datadir ;\
    wget -P /tmp/ https://download.jetbrains.com/teamcity/TeamCity-$TEAMCITY_VERSION.tar.gz ;\
    tar -xzf /tmp/TeamCity-$TEAMCITY_VERSION.tar.gz --strip-components=1 -C /opt/teamcity ;\
    chown -R tcuser:tcuser /opt/teamcity ;\
    rm -rf /tmp/* /var/cache/apk/*

ADD data/ /

RUN chmod +x /*.sh

EXPOSE 8111

VOLUME [/data/teamcity_server/datadir /opt/teamcity/logs]

CMD ["/run-services.sh"]
