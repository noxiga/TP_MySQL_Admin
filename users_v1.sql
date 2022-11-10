#
DROP USER IF EXISTS adminlocal@localhost;
CREATE USER adminlocal@localhost IDENTIFIED BY 'adminlocal';
GRANT ALL ON *.* TO adminlocal@localhost;

