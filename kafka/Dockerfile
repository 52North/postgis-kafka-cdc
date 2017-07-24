FROM openjdk:8-jre

ARG kafka_version=0.11.0.0
ARG scala_version=2.12

MAINTAINER wurstmeister

ENV KAFKA_VERSION=$kafka_version \
  SCALA_VERSION=$scala_version \
  KAFKA_HOME=/opt/kafka \
  KAFKA_MIRROR=http://mirror.netcologne.de/apache.org \
  MD5HASH=a408f2eea282bcfa8a25ba20eb1ad49b

# # Download Kafka #
RUN wget ${KAFKA_MIRROR}/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -O /tmp/kafka.tgz && \
    mkdir -p $KAFKA_HOME && echo "$MD5HASH  /tmp/kafka.tgz" | md5sum -c - && \
    tar -xzf /tmp/kafka.tgz -C $KAFKA_HOME --strip-components 1 && \
    rm -f /tmp/kafka.tgz && \
    apt-get update && apt-get install -y net-tools && apt-get clean

VOLUME ["/kafka"]

ENV PATH ${PATH}:${KAFKA_HOME}/bin
ADD scripts/start-kafka.sh /usr/bin/start-kafka.sh
ADD scripts/broker-list.sh /usr/bin/broker-list.sh
ADD scripts/create-topics.sh /usr/bin/create-topics.sh
# The scripts need to have executable permission
RUN chmod a+x /usr/bin/start-kafka.sh && \
    chmod a+x /usr/bin/broker-list.sh && \
    chmod a+x /usr/bin/create-topics.sh
# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka.sh"]
