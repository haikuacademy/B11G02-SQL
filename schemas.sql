
CREATE TABLE houses (
    house_id SERIAL PRIMARY KEY,
    location VARCHAR(255) NOT NULL,
    price_per_night FLOAT NOT NULL,
    bedroom INT NOT NULL,
    bathroom INT NOT NULL,
    description TEXT NOT NULL,
    user_id INT REFERENCES users(user_id)
);

CREATE TABLE houses_pictures (
    photo_id SERIAL PRIMARY KEY NOT NULL,
    photo_url VARCHAR(255) NOT NULL,
    house_id INT REFERENCES houses(house_id)
);

CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    house_id INT NOT NULL REFERENCES houses(house_id),
    check_in TIMESTAMP,
    check_out TIMESTAMP,
    total_price FLOAT,
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
    rating FLOAT NOT NULL,
    user_id INT NOT NULL REFERENCES users(user_id),
    house_id INT NOT NULL REFERENCES houses(house_id)
);