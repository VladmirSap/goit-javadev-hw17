CREATE TABLE IF NOT EXISTS note (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL
);