GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';

FLUSH PRIVILEGES;

DROP DATABASE IF EXISTS movies;

CREATE DATABASE IF NOT EXISTS movies;

USE movies;

CREATE TABLE IF NOT EXISTS movie (
    movie_id  VARCHAR(9) PRIMARY KEY,
    title     VARCHAR(100),
    `release` VARCHAR(4),
    rating    DECIMAL(2, 1),
    image     VARCHAR(255)
);


INSERT INTO movie (movie_id, title, `release`, rating, image) VALUES
(552, 'Rocky', '1976', 3.12, 'https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_SX300.jpg')
;