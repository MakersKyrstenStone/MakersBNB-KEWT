psql -- enter REPL

CREATE DATABASE "kewtbnb"; -- Create DB called 'Kewtbnb'

\c kewtbnb -- connect to kewtbnb db

CREATE TABLE users(id SERIAL PRIMARY KEY); -- create user table with id column

CREATE TABLE spaces(id SERIAL PRIMARY KEY); -- create spaces table with id column

CREATE TABLE accounts(id SERIAL PRIMARY KEY); -- create accounts table with id column

ALTER TABLE accounts ADD COLUMN "user_name" varchar(60); -- add user_name column

ALTER TABLE accounts ADD COLUMN "passwords" varchar(30); -- add passwords column

ALTER TABLE accounts ADD COLUMN "email" varchar(320); -- add email column


\c will -- replace 'will' with your name. Connects to the db parent directory 

-- * REPEAT ABOVE FOR 'kewtbnb_test' DATABASE * --
