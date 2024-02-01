-- This will select all the information about every house
SELECT houses_pictures.photo_url, houses.location, houses.bedroom, houses.bathroom, houses.price_per_night
FROM houses_pictures
INNER JOIN houses ON houses_pictures.house_id = houses.house_id
INNER JOIN reviews ON houses.house_id = reviews.house_id

-- This will count the total amount of reviews that each property has
SELECT COUNT(reviews.review) FROM reviews
INNER JOIN houses ON reviews.house_id = houses.house_id
WHERE houses.house_id = 1
