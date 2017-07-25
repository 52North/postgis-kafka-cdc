# Kafka / Postgis Change Data Capture examples

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
