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
    first_name VARCHAR(20) NOT NULL DEFAULT "TBA",
    family_name VARCHAR(20) NOT NULL DEFAULT "TBA"
    
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.users;

/* ----- Daten ------- */
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("Grizzi", "Grizabella", "Meier");
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("Maxi", "Max", "Mütze");
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("Maxi2", "Max", "Mustermann");
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("Sabs", "Sabine", "Musterfrau");

/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.users;





