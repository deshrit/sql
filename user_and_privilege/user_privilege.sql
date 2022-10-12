
-- Creating a user --
CREATE USER 'sabin'@'localhost' IDENTIFIED BY 'sabin';

-- Creating user for all connection
CREATE USER 'deshrit'@'%' IDENTIFIED BY 'deshrit';

CREATE USER 'deshrit'@'192.168.%' IDENTIFIED BY 'deshrit';


-- Changing password
ALTER USER 'deshrit'@'%' IDENTIFIED BY 'deshritdeshrit';
FLUSH PRIVILEGES;

-- Changing password if above doesnot work
UPDATE mysql.user SET authentication_string = PASSWORD('deshritdeshrit')
WHERE User = 'deshrit' AND Host = '%';
FLUSH PRIVILEGES;






-- Deleting user --
DROP USER 'sabin'@'localhost';

DROP USER deshrit; -- defaults to 'deshrit'@'%'

DROP USER deshrit@localhost;

DROP USER 'deshrit'@'192.168.%';


-- Checking previleges of a user
SHOW GRANTS FOR 'sabin'@'localhost';


-- Previlege on user

GRANT ALL PRIVILEGES ON *.* TO 'sabin'@'localhost';

GRANT ALL PRIVILEGES ON *.* TO 'sabin'@'localhost' WITH GRANT OPTION;


GRANT SELECT ON demo.* TO 'sabin'@'localhost';

-- Revoke previlege
REVOKE ALL ON *.* FROM 'sabin';

REVOKE SELECT ON demo.* FROM 'sabin'@'%';
FLUSH PRIVILEGES;

REVOKE GRANT OPTION ON *.* FROM 'sabin'@'%';