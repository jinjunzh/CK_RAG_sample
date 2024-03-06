CREATE TABLE uk_price_paid_changes
(
    `after.id` Nullable(UInt64),
    `after.price` Nullable(UInt32),
    `after.date` Nullable(UInt32),
    `after.postcode1` Nullable(String),
    `after.postcode2` Nullable(String),
    `after.type` Nullable(Enum8('other' = 0, 'terraced' = 1, 'semi-detached' = 2, 'detached' = 3, 'flat' = 4)),
    `after.is_new` Nullable(UInt8),
    `after.duration` Nullable(Enum8('unknown' = 0, 'freehold' = 1, 'leasehold' = 2)),
    `after.addr1` Nullable(String),
    `after.addr2` Nullable(String),
    `after.street` Nullable(String),
    `after.locality` Nullable(String),
    `after.town` Nullable(String),
    `after.district` Nullable(String),
    `after.county` Nullable(String),
    `op` LowCardinality(String),
    `ts_ms` UInt64,
    `source.sequence` String,
    `source.lsn` UInt64
)
ENGINE = MergeTree
ORDER BY tuple()
