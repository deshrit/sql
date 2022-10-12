-- MYSQL Stored Procedures

DELIMITER ;;

CREATE PROCEDURE get_all()
BEGIN
select * from Test;
END;;

DELIMITER ;


-- Calling the procedure
CALL get_all();






-- Parameterize procedures

DELIMITER ;;

CREATE PROCEDURE get_student(IN age INT)
BEGIN
select * from students WHERE student.age >= age;
END;;

DELIMITER ;


-- Calling the procedure

CALL get_student(17);





-- Returning the value from stored procedures

DELIMITER ;;

CREATE PROCEDURE get_student(OUT records INT)
BEGIN
select count(*) INTO records from students WHERE student.age >= 15;
END;;

DELIMITER ;


-- Calling the procedure
CALL get_student(@records);

SELECT @records as Totalrecords;