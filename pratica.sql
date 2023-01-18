-- Active: 1674015403801@@127.0.0.1@3306
CREATE TABLE books(
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    author TEXT NOT NULL,
    page_count INTEGER,
    price REAL NOT NULL
);

PRAGMA table_info('books');

DROP TABLE books;

SELECT * FROM books;

INSERT INTO books(id, name, author, page_count, price)
VALUES('P001', 'O Discipulado', 'Dietrich Bonhoeffer', 301, 30.99);

INSERT INTO books(id, name, author, price)
VALUES('P002', 'Liturgia do Ordinário', 'Tish Warren', 23.91);

DELETE FROM books
WHERE id = 'P001';

UPDATE books
SET page_count = 223
WHERE id = 'P002';

UPDATE books
SET id = 'P001'
WHERE id = 'P002';

SELECT * FROM books;

INSERT INTO books(id, name, author, page_count, price)
VALUES('P002', 'O Hobbit', 'JRR Tolkien', 809, 89.90);

DROP TABLE books;

INSERT INTO books(id, name, author, page_count, price)
VALUES('P003', 'O Sermão do Monte', 'John Wesley', 305, 19.50);

DELETE FROM books
WHERE id = 'P003';