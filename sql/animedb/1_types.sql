USE animedb;

CREATE TABLE IF NOT EXISTS types (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

-- Insert Types
INSERT INTO types VALUES (1, 'Movie');
INSERT INTO types VALUES (2, 'TV');
INSERT INTO types VALUES (3, 'OVA');
INSERT INTO types VALUES (4, 'Special');
INSERT INTO types VALUES (5, 'Music');
INSERT INTO types VALUES (6, 'ONA');

CREATE TABLE IF NOT EXISTS anime (
    anime_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    episodes INT,
    rating DECIMAL(4,3),
    members INT,
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES types(type_id)
);