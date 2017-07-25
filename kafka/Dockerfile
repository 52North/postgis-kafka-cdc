FROM openjdk:8-jdk-alpine

MAINTAINER Matthes Rieke <m.rieke@52north.org>

#
# Set the version, home directory, and MD5 hash.
# MD5 hash taken from http://kafka.apache.org/downloads.html for this version of Kafka
#
ENV KAFKA_VERSION=0.11.0.0 \
    SCALA_VERSION=2.12 \
    KAFKA_HOME=/kafka \
    MD5HASH=a408f2eea282bcfa8a25ba20eb1ad49b

#
# Create a user and home directory for Kafka
#
USER root
#RUN apt-get -y install iproute && apt-get clean
RUN addgroup -S kafka -g 1001 && adduser -u 1001 -S -g kafka -h $KAFKA_HOME -s /sbin/nologin -g "Kafka user" kafka && \
    chmod 755 $KAFKA_HOME
RUN mkdir $KAFKA_HOME/data && \
    mkdir $KAFKA_HOME/logs

#
# Change ownership and switch user
#
RUN chown -R kafka $KAFKA_HOME && \
    chgrp -R kafka $KAFKA_HOME

#
# Download Kafka
#
RUN apk add --update curl bash && \
  rm -rf /var/cache/apk/*
RUN curl -fSL -o /tmp/kafka.tgz $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | sed -rn 's/.*"preferred":.*"(.*)"/\1/p')kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz

#
# Verify the contents and then install ...
#
RUN echo "$MD5HASH  /tmp/kafka.tgz" | md5sum -c - &&\
    tar -xzf /tmp/kafka.tgz -C $KAFKA_HOME --strip-components 1 &&\
    rm -f /tmp/kafka.tgz

COPY ./log4j.properties $KAFKA_HOME/config/log4j.properties

#
# Allow random UID to use Kafka
#
RUN chmod -R g+w,o+w $KAFKA_HOME

USER kafka

# Set the working directory to the Kafka home directory
WORKDIR $KAFKA_HOME

#
# Expose the ports and set up volumes for the data and logs directories
#
EXPOSE 9092
VOLUME ["/kafka/data","/kafka/logs","/kafka/config"]

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["start"]
