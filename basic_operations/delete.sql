-- delete all
delete from people;

-- normal delete
delete from people where age = 21;

-- delete statements
delete from  people where name = 'Engineer man2' and person_id = 2;


-- delete from  more than one
delete from  people where age >= 30 and country = 'Russia';


-- protip
start transaction;
delete from  people;
rollback;
commit;