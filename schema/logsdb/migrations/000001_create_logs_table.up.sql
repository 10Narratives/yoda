CREATE TABLE logsdb.logs (
    event_time         DateTime64(3),
    service_name       String,
    level              LowCardinality(String),
    message            String,
    request_duration   UInt32
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(event_time)
ORDER BY (service_name, level, event_time)
TTL event_time + toIntervalMonth(3)
SETTINGS index_granularity = 8192;