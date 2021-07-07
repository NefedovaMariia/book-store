INSERT INTO sale (id, number)
VALUES (1, 10),
       (2, 20),
       (3,30);
INSERT INTO groups (id, text, sale_id)
VALUES (1, 'Drama', 1),
       (2, 'Adventure', 2),
       (3, 'Adventure2', 3);
INSERT INTO book (id, author, title, price, groups_id)
VALUES (1, 'Author 1', 'Book 1', 100,1),
       (2, 'Author 2', 'Book 2', 500,2),
       (3, 'Author 3', 'Book 3', 400,3),
       (4, 'Author 4', 'Book 4', 300,1),
       (5, 'Author 5', 'Book 5', 200,2);
