/* Aggregationen Min/Max */

/*
SELECT
    #MIN(price) "Max Preis"
    MAX(price) "Max Preis"
FROM stocks.ccc
;

SELECT MAX(price) "Max Preis" FROM stocks.ccc;
*/

/*
SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs
FROM stocks.ccc
WHERE price = (SELECT MAX(price) "Max Preis" FROM stocks.ccc)
;
*/

SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs,
    dividend Dividende
FROM stocks.ccc
#ORDER BY price ASC
ORDER BY dividend DESC
LIMIT 1
;

