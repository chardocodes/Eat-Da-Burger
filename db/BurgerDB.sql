CREATE DATABASE burger_db;
USE burger_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name varchar(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name, devoured) VALUES ('Pastrami Burger on Rye', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Peanutbutter Bacon Swiss Burger', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Avocado Bacon Cheeseburger', false);

SELECT * FROM burgers