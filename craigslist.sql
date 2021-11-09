DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE categories (
    id SERIAL,
    category TEXT
);

CREATE TABLE user (
    id SERIAL PRIMARY KEY,
    password VARCHAR(10),
    location TEXT
);

CREATE TABLE post (
    id SERIAL,
    region TEXT,
    title TEXT,
    post TEXT,
    categories_id INTEGER REFERENCES categories ON DELETE CASCADE,
    user_id INTEGER REFERENCES user ON DELETE CASCADE
);
