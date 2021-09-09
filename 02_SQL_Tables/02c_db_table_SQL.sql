/* ------  Strukturen ----- */


/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella", 29);
INSERT INTO boo.test(name,age) VALUES ("Alonzo", 35);
INSERT INTO boo.test(name,age) VALUES ( "Alonzo", 24);
INSERT INTO boo.test(name,age) VALUES ("Maxine", 26);
INSERT INTO boo.test(name,age) VALUES ("Maxine", 26);

/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.test;





