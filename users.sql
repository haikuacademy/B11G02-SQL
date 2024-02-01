-- Add a new user
INSERT INTO users (first_name, last_name, email, profile_picture, password)
values ('Josephine', 'Pena', 'josephine.pena@example.com', 'https://randomuser.me/api/portraits/women/15.jpg', 'Little')

-- Update user's data
UPDATE users
SET first_name = 'TestUpdateFName', last_name = 'TLNAME', email = 'testupdateemail@gmail.com', profile_picture = 'https://testpic.com/jpeg', PASSWORD = 'testupdatePass'
WHERE users.user_id = 5;

-- Authenticate user
SELECT * FROM users
WHERE email = 'testupdateemail@gmail.com'
AND PASSWORD = 'testupdatePass';

-- Read user's data
SELECT * FROM users
WHERE user_id = 1;