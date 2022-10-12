------ Creating trigger syntax -----------
CREATE TRIGGER 
{AFTER | BEFORE } {INSERT | UPDATE | DELETE|	
ON {TABLE} FOR EACH ROW
BEGIN
	--trigger_body
	-- valid sql;
END


-------------- See all triggers in databse --------------
SHOW TRIGGERS;

------ Dropping trigger -------------------
DROP TRIGGER trigger_name;





------- Creating examples tables in existing database -----------------
ALTER TABLE posts ADD COLUMN likes INT UNSIGNED NOT NULL DEFAULT 0;

CREATE TABLE users(
	user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(200) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE likes(
	like_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	post_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (like_id),
	FOREIGN KEY (post_id) REFERENCES posts(post_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)

);
-----------------------------------------------------------------------



-- Creating example

DELIMITER ;;
CREATE TRIGGER likes_count_inc
AFTER INSERT 
ON likes FOR EACH ROW
BEGIN
	UPDATE posts SET likes = likes + 1 WHERE post_id = new.post_id;
END;;
DELIMITER ;


DELIMITER ;;
CREATE TRIGGER likes_count_dec
AFTER DELETE
ON likes FOR EACH ROW
BEGIN
	UPDATE posts SET likes = likes - 1 WHERE post_id = old.post_id;
END;;
DELIMITER ;


