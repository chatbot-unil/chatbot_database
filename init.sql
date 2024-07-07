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
	PRIMARY KEY (uuid),
    uuid VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS sessions_users (
	PRIMARY KEY (user_uuid, session_id),
    user_uuid VARCHAR(255) NOT NULL,
    session_id VARCHAR(255) NOT NULL,
	creation_date TIMESTAMP NOT NULL DEFAULT now(),
    FOREIGN KEY (user_uuid) REFERENCES users(uuid)
);

-- Created in the backend by langchain_postgres module
-- CREATE TABLE IF NOT EXISTS chat_history (
--     id SERIAL PRIMARY KEY,
--     session_id UUID NOT NULL,
--     message JSONB NOT NULL,
--     created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
-- );