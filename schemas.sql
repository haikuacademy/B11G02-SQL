
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

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
    profile_picture varchar(255),
    email varchar(50) NOT NULL,
    password varchar(20) NOT NULL
);

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    review TEXT,
    user_id INT NOT NULL REFERENCES users(user_id),
    house_id INT NOT NULL REFERENCES houses(house_id)
);