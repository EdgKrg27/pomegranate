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