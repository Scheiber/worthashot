DROP DATABASE IF EXISTS worth_a_shot;
CREATE DATABASE worth_a_shot; 

\c worth_a_shot; 

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT NOT NULL,
    gender TEXT,
    zip_code TEXT,
    personality TEXT,
    flavors TEXT NOT NULL,
    atmosphere TEXT NOT NULL,
    firebase_id TEXT
);

CREATE TABLE alcohols (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    proof INT,
    description TEXT NOT NULL,
    category TEXT NOT NULL,
    flavors TEXT NOT NULL,
    type TEXT,
    image TEXT
);

CREATE TABLE user_establishments (
    id SERIAL PRIMARY KEY,
    user_uid TEXT NOT NULL,
    yelp_id TEXT NOT NULL,
    name TEXT,
    image TEXT
);

-- SELECT * FROM alcohols JOIN users ON users.flavor = alcohols.flavor