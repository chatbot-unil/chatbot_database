CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    collection_name VARCHAR(255) NOT NULL,
    desc_collection TEXT NOT NULL,
    host VARCHAR(255) NOT NULL,
    port INTEGER NOT NULL,
	search_k INTEGER NOT NULL,
    hash_collection VARCHAR(255) NOT NULL,
    last_update TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    uuid VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS sessions_users (
    id SERIAL PRIMARY KEY,
    user_uuid VARCHAR(255) NOT NULL,
    session_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_uuid) REFERENCES users(uuid)
);