CREATE DATABASE compensation;
use compensation;


CREATE TABLE IF NOT EXISTS artists_data(
  aid SMALLINT(8), UNSIGNED
  'name' VARCHAR(50),
  pronouns VARCHAR(50),
  city VARCHAR(100),
  'state' VARCHAR(30),
  genre VARCHAR(50),
  artwork_id_list TEXT(65535),
  customer_id_list TEXT(65535),
  available_for_custom BOOLEAN()
)

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/data_files/Artists.csv'
INTO TABLE artists_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(aid,name,pronouns,city,state,genre,artwork_id_list,customer_id_list,available_for_custom);

CREATE TABLE favorite_colors (
  name VARCHAR(20),
  color VARCHAR(10)
);

INSERT INTO favorite_colors
  (name, color)
VALUES
  ('Lancelot', 'blue'),
  ('Galahad', 'yellow');