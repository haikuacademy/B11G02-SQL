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