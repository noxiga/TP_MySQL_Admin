#sudo mysql --html < users.sql > script.html
SELECT 'SHOW DATABASES;' AS 'Lister les bases sur le serveur';
SHOW DATABASES;

SELECT 'SHOW tables FROM mysql;' AS 'Les tables de la base mysql';
SHOW tables FROM mysql;

SELECT 'DESC mysql.db;' AS 'Description de la table db de la base mysql';
DESC mysql.db;
SELECT 'SELECT * FROM mysql.db;' AS 'Contenu de la table db de la table mysql';
SELECT * FROM mysql.db;

SELECT 'SELECT * FROM mysql.user;' AS 'Contenu de la table user de la table mysql';
SELECT * FROM mysql.user;

SELECT 'DESC mysql.tables_priv;' AS 'Description de la tables_priv db de la base mysql';
DESC mysql.tables_priv;
SELECT 'SELECT * FROM mysql.table_priv;' AS 'Contenu de la tables_priv db de la table mysql';
SELECT * FROM mysql.tables_priv;

SELECT 'DESC mysql.columns_priv;' AS 'Description de la columns_priv db de la base mysql';
DESC mysql.columns_priv;
SELECT 'SELECT * FROM mysql.columns_priv;' AS 'Contenu de la columns_priv db de la table mysql';
SELECT * FROM mysql.columns_priv;

-- CREATE TABLE IF NOT EXISTS test.log (id integer, src varchar(30), msg varchar(50), PRIMARY KEY (id));
-- REPLACE INTO test.log VALUES(1,'localhost','MySQL OK');

-- SELECT * FROM mysql.user;
-- SELECT * FROM mysql.db;