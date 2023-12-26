-- 1) Создать таблицу publisher

-- publisher_id - уникальный идентификатор
-- name - название публикации
-- city - город (НЕОБЯЗАТЕЛЬНОЕ ПОЛЕ)


CREATE TABLE publisher
(
    publisher_id integer PRIMARY KEY,
    name varchar(32) NOT NULL,
    city varchar(32)
);

INSERT INTO "publisher" VALUES
(1,'Arman', 'Turkistan'),
(2,'Zhaks','Almaty'),
(3,'Didar','Almaty'),
(4,'Zhanerke','Astana');


-- 2) Создать таблицу book с полями:

-- book_id - уникальный идентификатор
-- author - автор книги
-- title - название книги
-- page_count - сколько страниц в книге (НЕОБЯЗАТЕЛЬНОЕ ПОЛЕ)

CREATE TABLE book
(
    book_id integer PRIMARY KEY,
    author varchar(32) NOT NULL,
    title varchar(32)NOT NULL,
	page_count varchar(32)
);

INSERT INTO "book" VALUES
(1,'Джордж Оруэлл', '1984', 400),
(2,'Михаил Булгаков','Мастер и Маргарита',240),
(3,'Грегори Дэвид Робертс','Шантарам',120),
(4,'Лев Толстой','Война и Мир', 240),
(5,'Лев Толстой','Детство',145),
(6,'Абай Кунанбаев','Слова назидания',140);



-- 3) Выполнить выборку из таблицы публикаторов
-- - С уникальными городами

SELECT DISTINCT city FROM publisher;


-- 4) Выполнить выборку из таблицы книги:
-- - Где кол-во страниц не превышает 250
-- - Где автор это Абай Кунанбаев И кол-во страниц не первышает 150
-- - Посчитать кол-во книг где автор Лев Толстой

SELECT * FROM book WHERE page_count < '250';
SELECT * FROM book WHERE author = 'Абай Кунанбаев' and page_count < '150';
SELECT COUNT(author) FROM book WHERE author = 'Лев Толстой';
