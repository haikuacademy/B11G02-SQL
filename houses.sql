-- Quiery to create a huose
INSERT INTO houses (location, price_per_night, bedroom, bathroom, description, user_id)
VALUES ('koh lipe', 140, 2, 1, 'Such a nice room with beautifull sea view, bunch of restaurants and coffee shops near by.',6);

-- Quiery to read a house
SELECT users.first_name, users.last_name, houses_pictures.photo_url, houses.location, houses.price_per_night, houses.bedroom, houses.bathroom, houses.description, reviews.date, reviews.review FROM users 
INNER JOIN houses ON users.user_id = houses.user_id
INNER JOIN houses_pictures ON houses.house_id = houses_pictures.house_id
INNER JOIN reviews ON reviews.review_id = users.user_id

-- Query to Update a house
UPDATE houses 
SET location = 'Chiang Mai', price_per_night = 30, bedroom = 2, bathroom = 1, 
description = 'ashbais northern house, jsadhwadk with stunning qwjdfnas'
WHERE house_id = 2

-- Query to Delete a house 
DELETE FROM houses
WHERE house_id = 2

-- This will select all the information about every house
SELECT houses_pictures.photo_url, houses.location, houses.bedroom, houses.bathroom, houses.price_per_night
FROM houses_pictures
INNER JOIN houses ON houses_pictures.house_id = houses.house_id
WHERE houses.house_id = 3

-- This will count the total amount of reviews that each property has
SELECT COUNT(reviews.review) FROM reviews
INNER JOIN houses ON reviews.house_id = houses.house_id
WHERE houses.house_id = 1
