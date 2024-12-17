CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    enabled BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS authorities (
    username VARCHAR(255),
    authority VARCHAR(255),
    CONSTRAINT fk_user FOREIGN KEY (username) REFERENCES users(username)
);

-- Add a user with rights
INSERT INTO users (username, password, enabled) VALUES ('user', '{noop}jdbcDefault', true);
INSERT INTO authorities (username, authority) VALUES ('user', 'ROLE_USER');
