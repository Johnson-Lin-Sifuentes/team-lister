USE adlister_db;

INSERT INTO users(username, email, password)
VALUES ('mjohnson', 'mjohnson@gmail.com', 'pass' ),
       ('slin', 'slin@yahoo.com', 'pass'),
       ('asifuentes', 'asifuentes@hotmail.com', 'pass');

INSERT INTO ads(user_id, title, description)
VALUES (1, 'New Car', 'Brand new Honda, no miles'),
       (2, 'Orangutan', 'Newly captured Orangutan with gluten allergies. Please be nice.'),
       (3, 'Grandmothers Wheelchair', 'Old style Victorian hand crafted wheelchair. Slightly used.');
