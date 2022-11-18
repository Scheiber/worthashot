DROP DATABASE IF EXISTS worth_a_shot_user;
CREATE DATABASE worth_a_shot_user; 

\c worth_a_shot_user; 

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT NOT NULL,
    gender TEXT,
    zip_code TEXT,
    personality TEXT,
    flavor TEXT,
    atmosphere TEXT NOT NULL
);