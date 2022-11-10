#sudo mysql --html < users.sql > script.html
SELECT 'SHOW DATABASES;' AS 'Lister les bases sur le serveur';
SHOW DATABASES;

SELECT 'SHOW tables FROM mysql;' AS 'Les tables de la base mysql';
SHOW table FROM mysql;

#SELECT * FROM mysql.user;
#SELECT * FROM mysql.db;