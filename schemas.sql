CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    house_id INT NOT NULL REFERENCES houses(house_id),
    check_in TIMESTAMP,
    check_out TIMESTAMP,
    total_price FLOAT,
    booking_status VARCHAR(50),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    booked_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);