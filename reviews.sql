INSERT INTO reviews (review, user_id, house_id)
VALUES ('Great outdoor shower when it rains', 5, 1);

UPDATE reviews
SET review = 'Updated - Great outdoor shower when it rains'
WHERE review_id = 2;


SELECT * FROM reviews
WHERE review_id = 4;

-- Joins with users table, DATA NEEDED: users.first_name, users.last_name, users.profile_picture
SELECT reviews.rating, reviews.review, users.first_name, users.last_name, users.profile_picture from reviews
LEFT JOIN users
ON users.user_id = reviews.review_id
WHERE house_id = 1
ORDER BY reviews."date" DESC;

-- Total count of reviews for house_id
SELECT COUNT(reviews.review_id) AS review_count
FROM reviews
LEFT JOIN users
ON reviews.user_id = users.user_id
WHERE house_id = 1;

-- Average star rating for house_id
SELECT AVG(rating)
FROM reviews
WHERE house_id = 1;
