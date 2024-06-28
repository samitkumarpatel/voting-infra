CREATE TABLE IF NOT EXISTS vote_options (
    id VARCHAR(255) NOT NULL UNIQUE,
    option VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS votes (
    id VARCHAR(255) SERIAL PRIMARY KEY,
    option_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    REFERENCES vote_options(id)
);