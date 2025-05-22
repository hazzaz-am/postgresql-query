-- Active: 1747442878604@@localhost@5432@postgres
-- Active: 1747442878604@@localhost@5432@postgres

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
)

INSERT INTO
    "user" (username)
VALUES ('Akash'),
    ('Batash'),
    ('Sagor'),
    ('Nodi')

INSERT INTO
    post (title, user_id)
VALUES ('This post is from Akash', 1),
    ('This post is from Nodi', 4),
    ('This post is from Batash', 2),
    (
        'This is second post from Nodi',
        4
    )

SELECT * FROM "user"

SELECT * FROM post;

SELECT title, username FROM post JOIN "user" ON post.id = "user".id

SELECT * FROM post JOIN "user" ON post.id = "user".id;

SELECT post.id FROM post JOIN "user" ON post.id = "user".id;

SELECT "user".id FROM post JOIN "user" ON post.id = "user".id;

SELECT * FROM post AS p JOIN "user" AS u ON p.id = u.id;

SELECT * FROM post p JOIN "user" u ON p.id = u.id;

INSERT INTO post (title) VALUES ('This is anonymous post');

SELECT * FROM post AS p JOIN "user" AS u ON p.id = u.id;

SELECT * FROM post AS p LEFT JOIN "user" AS u ON p.id = u.id;

SELECT * FROM post AS p RIGHT JOIN "user" AS u ON p.id = u.id;

INSERT INTO "user" (username) VALUES ('Hazzaz');

SELECT * FROM post AS p RIGHT OUTER JOIN "user" AS u ON p.id = u.id;

DELETE FROM post WHERE id = 5;

SELECT * FROM "user" AS u LEFT OUTER JOIN post AS p ON u.id = p.user_id;

DELETE FROM "user" WHERE id = 5;

INSERT INTO post (title) VALUES ('This is anonymous post');

SELECT * FROM "user" AS u RIGHT OUTER JOIN post AS p ON u.id = p.user_id;

SELECT * FROM "user" AS u FULL OUTER JOIN post AS p ON u.id = p.user_id;
