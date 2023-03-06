USE codeup_test_db;

SELECT name FROM albums
WHERE name > 1991;

DELETE from albums
WHERE name > 1991;

DELETE from albums
WHERE genre = 'Disco';

DELETE from albums
WHERE name = 'Whitney Houston';

