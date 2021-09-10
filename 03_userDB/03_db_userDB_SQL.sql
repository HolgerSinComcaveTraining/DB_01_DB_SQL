/* ------  Strukturen ----- */


/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(20) NOT NULL UNIQUE,
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL DEFAULT "TBA",
    family_name VARCHAR(20) NOT NULL DEFAULT "TBA"
    
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.users;



/* ----- Daten ------- */
/*
INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) 
VALUES 
    ("Grizzi","1234", "Grizabella", "Meier"),
    ("Maxi","testpasswort", "Max", "Mütze")
;
INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) VALUES ("Maxi2","qwertz", "Max", "Mustermann");
INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) VALUES ("Sabs","abcd", "Sabine", "Musterfrau");
*/

INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) 
VALUES 
    ("Grizzi",SHA1("1234"), "Grizabella", "Meier"),
    ("Maxi",SHA1("testpasswort"), "Max", "Mütze"),
    ("Maxi2",SHA1("SKAF32457PWF"), "Max", "Mustermann"),
    ("Sabs",SHA1("SryK"), "Sabine", "Musterfrau")
;


/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.users;


ALTER TABLE boo.users ADD user_plz INT(5) NOT NULL DEFAULT 00000;

DESCRIBE boo.users;
SELECT * FROM boo.users;

#UPDATE boo.users SET user_plz = 99999 WHERE first_name = "Max";
UPDATE boo.users SET user_plz = 47110 WHERE id = 1;
SELECT * FROM boo.users;





