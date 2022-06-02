CREATE TABLE films (
    id integer NOT NULL,
    title VARCHAR,
    release_year INTEGER,
    country VARCHAR,
    duration INTEGER,
    language VARCHAR,
    certification VARCHAR,
    gross bigint,
    budget bigint
);



CREATE TABLE people (
    id integer NOT NULL,
    name VARCHAR,
    birthdate date,
    deathdate date
);



CREATE TABLE reviews (
    id INTEGER NOT NULL,
    film_id INTEGER,
    num_user INTEGER,
    num_critic INTEGER,
    imdb_score real,
    num_votes INTEGER,
    facebook_likes INTEGER
);




CREATE TABLE roles (
    id integer NOT NULL,
    film_id INTEGER,
    person_id INTEGER,
    role VARCHAR
);


-- Copy over data from CSVs
.mode csv
.separator ;
.import 'films.csv' films
.import 'people.csv' people
.import 'reviews.csv' reviews
.import 'roles.csv' roles