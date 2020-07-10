CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique ID/Key',
    artist  VARCHAR(100) NOT NULL COMMENT 'Artist name (Required)',
    name    VARCHAR(100) NOT NULL COMMENT 'Album name (Required)',
    sales   DOUBLE COMMENT 'Number of sales in millions',
    release_date    INT UNSIGNED COMMENT 'Year of album release',
    genre   VARCHAR(100) COMMENT 'Genre of album',
    PRIMARY KEY (id),
    UNIQUE KEY (artist,name)
) COMMENT = 'MySQL Index Exercises';