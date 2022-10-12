-- select all
select * from people;

-- select specific columns
select name, age from people;

-- select a row
select * from people where name = 'Engineer man'; -- case insensitive search

-- filtering
select * from people where age >= 30;
select * from people where age >= 30 AND country = 'Russia'; -- MYSQL does case insensitive search for rows too


-- orders and selects
select * from people order by id asc; -- default asc

-- order and limits
select * from people order by age desc limit 2; -- top two with greatest age