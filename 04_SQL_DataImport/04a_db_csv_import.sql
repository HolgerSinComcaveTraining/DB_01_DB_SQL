/* ------  Strukturen ----- */


/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.cats
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.cats;

LOAD DATA LOCAL INFILE "04_SQL_DataImport/data/cats_export_no_id.csv"
INTO TABLE boo.cats
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(cat_name, fur_color, age)
;

SELECT * FROM boo.cats;


