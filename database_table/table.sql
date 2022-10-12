
-- Database
CREATE DATABASE demo;

-- NEVER
DROP DATABASE demo;


-- Tables
create table my_table(
	id bigint unsigned not null auto_increment,
	status tinyint unsigned not null default 2,
	events int unsigned not null default 0,
	latitude decimal(10, 8) null,
	longitude decimal(11, 8) null,
	name varchar(50) not null,
	description varchar(128) not null default 'N/A',
	bio text null,
	birthday date null,
	event_time time null,
	created_at datetime not null,
	primary key(id),
	key idx_status (status),
	key idx_birthday_time (birthday, event_time)
)engine=innodb
default charset=utf8
default collate=utf8_unicode_ci;



-- utf8_unicode_ci ==> case-incensitive
-- Create index using
-- key idx_name (column)
-- alter table table name add index idx_name (column)



-- Table for basic operations

create table people (
	person_id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	age TINYINT UNSIGNED NOT NULL DEFAULT 1,
	country VARCHAR(60),
	joined TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);





-- Tables for foreign key tests
create table peoples (
	person_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	age TINYINT UNSIGNED
);
-- Adding primary key in peoples table
ALTER TABLE peoples ADD PRIMARY KEY (person_id);


create table orders (
	order_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	order_number INT UNSIGNED NOT NULL,
	person_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (person_id) REFERENCES peoples (person_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
)ENGINE=INNODB;



-- Tables for Joins

CREATE TABLE posts (
	post_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	title VARCHAR(128) NOT NULL,
	content TEXT NOT NULL,
	PRIMARY KEY(post_id)
)engine=innodb
default charset=utf8
default collate=utf8_unicode_ci;

CREATE TABLE comments (
	comment_id BIGINT UNSIGNED AUTO_INCREMENT,
	post_id BIGINT UNSIGNED NOT NULL,
	content TEXT NOT NULL,
	PRIMARY KEY(comment_id),
	FOREIGN KEY(post_id) REFERENCES posts(post_id)
);


-- Insert some values into posts
INSERT INTO posts VALUES(1, 'post 1', 'content 1');
INSERT INTO posts VALUES(2, 'post 2', 'content 2');
INSERT INTO posts VALUES(3, 'post 3', 'content 3');
INSERT INTO posts VALUES(4, 'post 4', 'content 5');
INSERT INTO posts VALUES(6, 'post 6', 'content 6');

-- Insert some values into comments
INSERT INTO comments VALUES(default, 1, 'post 1 comment 1');
INSERT INTO comments VALUES(default, 1, 'post 1 comment 2');
INSERT INTO comments VALUES(default, 1, 'post 1 comment 3');

INSERT INTO comments VALUES(default, 2, 'post 2 comment 1');
INSERT INTO comments VALUES(default, 2, 'post 2 comment 2');
INSERT INTO comments VALUES(default, 2, 'post 2 comment 3');

INSERT INTO comments VALUES(default, 3, 'post 3 comment 1');
INSERT INTO comments VALUES(default, 3, 'post 3 comment 2');
INSERT INTO comments VALUES(default, 3, 'post 3 comment 3');


