-- Setting and getting Variables in MYSQL

-- Setting session varible
SET @name := "deshrit baral"

-- Getting session varible
SELECT @name;

-- Getting all session variables
SHOW VARIABLES;


SHOW SESSION VARIABLES;

SHOW SESSION VARIABLES LIKE '%size%';

SHOW GLOBAL VARIABLES LIKE 'max%';
