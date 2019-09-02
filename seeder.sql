USE adlister_db;

INSERT INTO users(username, email, password)
VALUES ('sus','sus@gmail.com','sus'),
       ('susan','susan@gmail.com','susan');

INSERT INTO categories(title)
VALUES ('Electronics'),
       ('Appliances'),
       ('Furniture'),
       ('Vehicles'),
       ('Jewelry'),
       ('Entertainment'),
       ('Tools');

INSERT INTO ads(user_id, title, description, categ_id)
VALUES (1, 'New Car', 'Brand new Honda, no miles,',4),
       (2, 'Orangutan', 'Newly captured Orangutan with gluten allergies. Please be nice.',6),
       (2, 'Grandmothers Wheelchair', 'Old style Victorian hand crafted wheelchair. Slightly used.',3);


