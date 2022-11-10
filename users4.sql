#script users4

INSERT ignore mysql.user(Host,User,Select_priv,ssl_cipher,x509_issuer,x509_subject)
    VALUES ('localhost', 'guest', 'Y', '', '','');

-- REPLACE mysql.user
--     VALUES ('localhost', 'guest', 'Y', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', '', '', '', '',
--         0, 0, 0, 0, 'mysql_native_password', '',
--         'N', '2022-05-03 10:00:00', NULL, 'N');

FLUSH PRIVILEGES;

DROP USER IF EXISTS guest@localhost;
CREATE USER guest@localhost IDENTIFIED BY 'guest';
GRANT SELECT ON *.* TO guest@localhost;