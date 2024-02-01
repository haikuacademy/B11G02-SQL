
-- CREATE BOOKING

INSERT INTO bookings (user_id, house_id, check_in, check_out, total_price)
VALUES (5, 5, '2024-01-31', '2024-02-10', 25);

-- READ BOOKING

SELECT location, bookings.check_in, bookings.check_out, price_per_night, bookings.total_price, bedroom, bookings.user_id, houses_pictures.photo_url
FROM bookings
JOIN houses ON bookings.house_id = houses.house_id
JOIN houses_pictures ON houses.house_id = houses_pictures.house_id
WHERE bookings.user_id = 1;