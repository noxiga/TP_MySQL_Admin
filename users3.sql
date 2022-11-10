#script users3

INSERT ignore mysql.user(Host,User,Select_priv,ssl_cipher,x509_issuer,x509_subject)
    VALUES ('localhost', 'managertestlocal', 'Y', '', '','');

-- REPLACE mysql.user
--     VALUES ('localhost', 'managertestlocal', 'Y', 'Y',
--         'Y', 'Y', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', '', '', '', '',
--         0, 0, 0, 0, 'mysql_native_password', '',
--         'N', '2022-05-03 10:00:00', NULL, 'N');


DROP USER IF EXISTS managertestlocal@localhost;
CREATE USER managertestlocal@localhost IDENTIFIED BY 'managertestlocal';
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO managertestlocal@localhost;

FLUSH PRIVILEGES;