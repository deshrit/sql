SELECT * FROM posts
RIGHT JOIN comments ON posts.post_id = comments.post_id;


SELECT posts.post_id, posts.title, posts.content, comments.content
FROM posts
RIGHT JOIN comments ON comments.post_id = posts.post_id;