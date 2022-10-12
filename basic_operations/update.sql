-- update statements
update people set name = 'Engineer man2' where person_id = 2;


-- update more than one
update people set name = 'Dwag', age = 69 where person_id = 8;


-- protip
start transaction;
update people set name = 'Deshrit';
rollback;
commit;