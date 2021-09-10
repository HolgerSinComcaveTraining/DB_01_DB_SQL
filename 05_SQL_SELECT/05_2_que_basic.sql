/* Queries Basic */


SELECT 
    id,
    ticker AS "SYM",
    price AS "Kurs in $",
    c_name AS "Unternehmen",
    industry AS "Branche"
FROM stocks.ccc
LIMIT 200,10 -- 10 Zeilen ab 200
;