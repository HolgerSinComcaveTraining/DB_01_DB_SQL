DROP DATABASE IF EXISTS klausurDB;
CREATE DATABASE IF NOT EXISTS klausurDB;

USE klausurDB;

DROP TABLE IF EXISTS productlist;
CREATE TABLE IF NOT EXISTS productlist
(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR(45) NOT NULL,
    category VARCHAR(45) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    in_stock INT NOT NULL
);

DESCRIBE productlist;

INSERT INTO productlist(product, category, price, in_stock) VALUES ("Dell XP1", "Computer", 520, 200);
INSERT INTO productlist(product, category, price, in_stock) VALUES ("AKOYA ZD217", "Computer", 430, 10);
INSERT INTO productlist(product, category, price, in_stock) VALUES ("WD 1020", "External Memory", 115, 40);
INSERT INTO productlist(product, category, price, in_stock) VALUES ("CISCO 2050T", "Network Components", 245, 10);

DESCRIBE productlist;

SELECT * FROM productlist;

SELECT 
    product AS Ware,
    price AS Preis
FROM productlist
WHERE category = "Computer"
ORDER BY price DESC
;