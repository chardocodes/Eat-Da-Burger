DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

DROP TABLE IF EXISTS burgers;

CREATE TABLE burgers (
id int NOT NULL AUTO_INCREMENT,
burger_name varchar(255) NOT NULL,
devoured BOOL DEFAULT false,
PRIMARY KEY (id)
);
INSERT INTO burgers (burger_name, devoured) VALUES ('Pastrami Burger on Rye', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Peanutbutter Bacon Swiss Burger', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Avocado Bacon Cheeseburger', false);

SELECT * FROM burgers