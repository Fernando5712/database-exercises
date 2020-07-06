USE codeup_test_db;

DROP TABLE if EXISTS albums;

CREATE TABLE if NOT EXISTS albums(
    id INT unsigned NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    album_name VARCHAR(100),
    release_date SMALLINT,
    sales FLOAT(7,2) NOT NULL,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);