USE codeup_test_db;

-- selected exercise --
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE album_name = 'Peppers Lonely Hearts Club Band';
SELECT genre FROM albums WHERE genre = 'Nevermind';
SELECT release_date FROM albums WHERE BETWEEN 1990 and 1999;
SELECT sales FROM albums WHERE BETWEEN 1 and 19.9;
SELECT genre FROM albums WHERE genre = 'Rock';

-- update exercise --
SELECT album_name from albums;
UPDATE albums SET sales = (sales * 10);
SELECT release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE 1980;
SELECT artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE 'Michael Jackson';

-- Delete exercise --



