#script users2

INSERT ignore mysql.user(Host,User,Select_priv,ssl_cipher,x509_issuer,x509_subject)
    VALUES ('localhost', 'usertestlocal', 'Y', '', '','');

-- REPLACE mysql.user
--     VALUES ('localhost', 'usertestlocal', 'Y', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', 'N', 'N', 'N',
--         'N', 'N', 'N', '', '', '', '',
--         0, 0, 0, 0, 'mysql_native_password', '',
--         'N', '2022-05-03 10:00:00', NULL, 'N');

DROP USER IF EXISTS usertestlocal@localhost;
CREATE USER usertestlocal@localhost IDENTIFIED BY 'usertestlocal';
GRANT SELECT ON *.* TO usertestlocal@localhost;

FLUSH PRIVILEGES;