FROM nimmis/debian:jessie

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# set default java environment variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

ADD bin/install.sh /

RUN apt-get install -y software-properties-common && \
apt-get update && \
chmod +x /install.sh && \
/install.sh jre-headless && \
/install.sh jre  && \
/install.sh jdk && \
rm -rf /var/lib/apt/lists/*


