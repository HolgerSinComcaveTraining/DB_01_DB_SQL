/* Datenimport CSV mit ID */

-- CREATE siehe 04

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.cats;

SELECT * FROM boo.cats;


-- UPDATE

# UPDATE boo.cats SET cat_name = "Big Alonzo" WHERE fur_color = "grey";


DESCRIBE boo.cats;

SELECT cat_name FROM boo.cats;
SELECT cat_name, age FROM boo.cats;
SELECT age, cat_name FROM boo.cats;
SELECT cat_name AS "Katzen", age AS "Alter" FROM boo.cats;


SELECT 
    cat_name AS "Katzen", 
    age AS "Alter" 
FROM boo.cats
WHERE age > 30
;


DELETE FROM boo.cats WHERE id = 2;

SELECT * FROM boo.cats;


