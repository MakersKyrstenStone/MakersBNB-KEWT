psql -- enter REPL

-- Create first database called 'kewtbnb'
CREATE DATABASE "kewtbnb";

-- connect to kewtbnb database
\c kewtbnb 


------------ users table: (keeps record of user data using foreign_keys to link to spaces and accounts tables)

-- create users table with a primary id column. Using 'SERIAL' will increment the id column automatically
CREATE TABLE users(id SERIAL PRIMARY KEY); 

-- add account_id column to users table using integer (int4) data-type (4 = maximum of 4 bits) and makes the column a foreign_key
ALTER TABLE users ADD COLUMN "account_id" int4, ADD FOREIGN KEY ("account_id") REFERENCES accounts ("id");

-- add owned_id column to users table using integer (int4) data-type (4 = maximum of 4 bits) and makes the column a foreign_key
ALTER TABLE users ADD COLUMN "owned_id" int4, ADD FOREIGN KEY ("owned_id") REFERENCES spaces ("id");

-- add rented_id column to users table using integer (int4) data-type (4 = maximum of 4 bits) and makes the column a foreign_key
ALTER TABLE users ADD COLUMN "rented_id" int4, ADD FOREIGN KEY ("rented_id") REFERENCES spaces ("id");


------------ spaces table: (keeps record of spaces and their availability)

-- create spaces table with a primary id column. Using 'SERIAL' will increment the id column automatically
CREATE TABLE spaces(id SERIAL PRIMARY KEY); 

-- add available column to spaces table using boolean (bool) data-type
ALTER TABLE spaces ADD COLUMN "available" bool;

-- add price column to spaces table using integer (in4) data-type (4 = maximum of 4 bits)
ALTER TABLE spaces ADD COLUMN "price" int4;

-- add name column to spaces table using string (varchar) data-type (60 maximum characters)
ALTER TABLE spaces ADD COLUMN "name" varchar(60); 

-- add description column to spaces table using string (varchar) data-type (320 maximum characters)
ALTER TABLE spaces ADD COLUMN "description" varchar(320); 


------------ accounts table: (keeps record of user account details)


-- create accounts table with a primary id column. Using 'SERIAL' will increment the id column automatically
CREATE TABLE accounts(id SERIAL PRIMARY KEY);

-- add user_name column to accounts table using string (varchar) data-type (60 maximum characters)
ALTER TABLE accounts ADD COLUMN "user_name" varchar(60);

-- add passwords column to accounts table using string (varchar) data-type (30 maximum characters)
ALTER TABLE accounts ADD COLUMN "passwords" varchar(30);

-- add email column to accounts table using string (varchar) data-type (320 maximum characters)
ALTER TABLE accounts ADD COLUMN "email" varchar(320); -- add email column


\c will -- replace 'will' with your name. Connects to the database parent directory ready to create the test database

------------ create kewtbnb_test database:

-- * REPEAT ABOVE FOR 'kewtbnb_test' DATABASE * --
