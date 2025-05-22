-- Active: 1747442878604@@localhost@5432@postgres

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE CASCADE
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE SET NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT REFERENCES "user" (id) ON DELETE SET DEFAULT DEFAULT 1
)

ALTER TABLE post ALTER COLUMN user_id SET NOT NULL

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

DROP TABLE "user";

DROP TABLE post;

DELETE FROM "user" WHERE id = 4;

SELECT * FROM "user"

SELECT * FROM post;