USE codeup_test_db;


SELECT album_name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE album_name = 'Peppers Lonely Hearts Club Band';
SELECT genre FROM albums WHERE genre = 'Nevermind';
SELECT release_date FROM albums WHERE BETWEEN 1990 and 1999;
SELECT sales FROM albums WHERE BETWEEN 1 and 19.9;
SELECT genre FROM albums WHERE genre = 'Rock';
