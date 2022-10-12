SELECT * FROM posts
LEFT JOIN comments ON posts.post_id = comments.post_id;

-- only requied columns
SELECT posts.post_id, posts.title, posts.content, comments.content
FROM posts
LEFT JOIN comments ON comments.post_id = posts.post_id;


-- using clauses
SELECT * FROM posts
LEFT JOIN comments ON posts.post_id = comments.post_id WHERE posts.post_id = 1;


SELECT * FROM posts
LEFT JOIN comments ON posts.post_id = comments.post_id order by comments.comment_id desc;

SELECT * FROM posts
LEFT JOIN comments ON posts.post_id = comments.post_id order by comments.comment_id desc limit 3;