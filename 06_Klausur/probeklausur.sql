
DROP DATABASE IF EXISTS klausurDB;
CREATE DATABASE IF NOT EXISTS klausurDB;

USE klausurDB;

DROP TABLE IF EXISTS addressbook;
CREATE TABLE IF NOT EXISTS addressbook
(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    vorname VARCHAR(45) NOT NULL,
    plz INT NOT NULL,
    ort VARCHAR(45) NOT NULL
);

INSERT INTO addressbook(name, vorname, plz, ort) VALUES ("Müller", "Peter", 12991, "Berlin");
INSERT INTO addressbook(name, vorname, plz, ort) VALUES ("Ay", "Yildiz", 63325, "Langen");
INSERT INTO addressbook(name, vorname, plz, ort) VALUES ("Sommer", "Petra", 70137, "Stuttgart");

DESCRIBE addressbook;

SELECT * FROM addressbook;

SELECT 
    vorname,
    name
FROM addressbook
WHERE vorname LIKE "Pet%"
;