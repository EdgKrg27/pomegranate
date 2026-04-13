USE animedb;

CREATE TABLE IF NOT EXISTS genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Insert Genres
INSERT INTO genres VALUES (1, 'Action');
INSERT INTO genres VALUES (2, 'Adventure');
INSERT INTO genres VALUES (3, 'Cars');
INSERT INTO genres VALUES (4, 'Comedy');
INSERT INTO genres VALUES (5, 'Dementia');
INSERT INTO genres VALUES (6, 'Demons');
INSERT INTO genres VALUES (7, 'Drama');
INSERT INTO genres VALUES (8, 'Ecchi');
INSERT INTO genres VALUES (9, 'Fantasy');
INSERT INTO genres VALUES (10, 'Game');
INSERT INTO genres VALUES (11, 'Harem');
INSERT INTO genres VALUES (12, 'Hentai');
INSERT INTO genres VALUES (13, 'Historical');
INSERT INTO genres VALUES (14, 'Horror');
INSERT INTO genres VALUES (15, 'Josei');
INSERT INTO genres VALUES (16, 'Kids');
INSERT INTO genres VALUES (17, 'Magic');
INSERT INTO genres VALUES (18, 'Martial Arts');
INSERT INTO genres VALUES (19, 'Mecha');
INSERT INTO genres VALUES (20, 'Military');
INSERT INTO genres VALUES (21, 'Music');
INSERT INTO genres VALUES (22, 'Mystery');
INSERT INTO genres VALUES (23, 'Parody');
INSERT INTO genres VALUES (24, 'Police');
INSERT INTO genres VALUES (25, 'Psychological');
INSERT INTO genres VALUES (26, 'Romance');
INSERT INTO genres VALUES (27, 'Samurai');
INSERT INTO genres VALUES (28, 'School');
INSERT INTO genres VALUES (29, 'Sci-Fi');
INSERT INTO genres VALUES (30, 'Seinen');
INSERT INTO genres VALUES (31, 'Shoujo');
INSERT INTO genres VALUES (32, 'Shoujo Ai');
INSERT INTO genres VALUES (33, 'Shounen');
INSERT INTO genres VALUES (34, 'Shounen Ai');
INSERT INTO genres VALUES (35, 'Slice of Life');
INSERT INTO genres VALUES (36, 'Space');
INSERT INTO genres VALUES (37, 'Sports');
INSERT INTO genres VALUES (38, 'Super Power');
INSERT INTO genres VALUES (39, 'Supernatural');
INSERT INTO genres VALUES (40, 'Thriller');
INSERT INTO genres VALUES (41, 'Vampire');
INSERT INTO genres VALUES (42, 'Yaoi');
INSERT INTO genres VALUES (43, 'Yuri');