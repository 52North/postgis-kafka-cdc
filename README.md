# Kafka / Postgis Change Data Capture examples

Currently, images are not yet pushed to docker hub. Please compile locally (it's easy,
[docker-compose](https://docs.docker.com/compose/install/) required):

```
cd kafka
docker-compose build
cd ../kafka-connect-base
docker-compose build
cd ../kafka-connect
docker-compose build
cd ../postgis-debezium
docker-compose build
cd ..
```

Run with `docker-compose rm -f && docker-compose up --build`.

Wait for the container to boot up. To initialize the connector,
send an HTTP POST (`application/json`)
to [http://localhost:8083/connectors/](http://localhost:8083/connectors):

```json
{
  "name": "inventory-connector",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "database.hostname": "postgres",
    "database.port": "5432",
    "database.user": "postgres",
    "database.password": "postgres",
    "database.dbname" : "postgres",
    "database.server.name": "fullfillment",
    "table.whitelist": "public.inventory",
    "snapshot.mode": "never"
  }
}
```

## Known Limitations

Work in progress, so do not expect production stability.

### Kafka Version

The currently used debezium Kafka connect plugin is compiled against the
0.10.2.0 API of Kafka. It seems to work with Kafka 0.11.0.0 as well, but
we cannot guarantee stable behavior. Once debezium is available for version
0.11.0.0, we will update the Docker images.

### Unexpected Behavior

It may happen that changes are only available after a delay (1-2 minutes?).
This may be related to topic creation, as it does not seem to happen if
a consumer _first_ (i.e. before POSTing the above connector config)
subscribes to the topic that is later used by debezium to publish changes.

## Acknowledgement

This Docker images have been derived from
[debezium/docker-images](https://github.com/debezium/docker-images).
