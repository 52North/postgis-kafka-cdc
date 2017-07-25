FROM mdillon/postgis:9.6

MAINTAINER Matthes Rieke <m.rieke@52north.org>

# Install the packages which will be required to get everything to compile
RUN apt-get update \
    && apt-get install -f -y --no-install-recommends \
        software-properties-common \
        build-essential \
        pkg-config \
        git \
        postgresql-server-dev-9.6 \
        libproj-dev \
    && apt-get clean && apt-get update && apt-get install -f -y --no-install-recommends \
        liblwgeom-dev \
    && add-apt-repository "deb http://ftp.debian.org/debian testing main contrib" \
    && apt-get update && apt-get install -f -y --no-install-recommends \
        libprotobuf-c-dev=1.2.* \
    && rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/debezium/postgres-decoderbufs -b v0.5.1 --single-branch \
        && cd /postgres-decoderbufs \
        && make && make install \
        && cd / \
        && rm -rf postgres-decoderbufs && \
    apt-get remove -y software-properties-common \
            build-essential \
            pkg-config \
            git \
            postgresql-server-dev-9.6 \
            libproj-dev \
            liblwgeom-dev && \
    apt-get autoremove -y && apt-get clean


# Copy the custom configuration which will be passed down to the server (using a .sample file is the preferred way of doing it by
# the base Docker image)
COPY postgresql.conf.sample /usr/share/postgresql/postgresql.conf.sample

# Copy the script which will initialize the replication permissions
COPY /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

ENV POSTGRES_DB=postgres

ADD dump.sql.gz /docker-entrypoint-initdb.d/zzz-dump.sql.gz
