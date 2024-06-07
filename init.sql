CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    collection_name VARCHAR(255) NOT NULL,
    desc_collection TEXT NOT NULL,
    host VARCHAR(255) NOT NULL,
    port INTEGER NOT NULL,
    hash_collection VARCHAR(255) NOT NULL,
    last_update TIMESTAMP NOT NULL
);