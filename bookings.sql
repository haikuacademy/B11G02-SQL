
-- CREATE BOOKING

INSERT INTO bookings (booking_id, user_id, house_id, check_in, check_out, total_price, booking_status, payment_method, payment_status, booked_on)
VALUES (5, 5, 5, LOCALTIMESTAMP, LOCALTIMESTAMP, 25, 'confirmed', 'cash', 'paid', LOCALTIMESTAMP);

-- READ BOOKING

SELECT location, bookings.check_in, bookings.check_out, price_per_night, bookings.total_price, bedroom,  bathroom 
FROM houses
JOIN bookings
ON bookings.booking_id = houses.house_id﻿
WHERE location = 'Bangkok' OR location = 'Bali';