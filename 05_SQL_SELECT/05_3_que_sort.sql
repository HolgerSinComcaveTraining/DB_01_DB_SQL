/* Queries Sortierung */


SELECT 
    # id,
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs in $",
    no_yrs AS "YEARS ++",
    #industry AS "Branche",
    CONCAT(sector, "|", industry) AS "Operations"
FROM stocks.ccc
#ORDER BY price DESC
ORDER BY no_yrs DESC, price ASC
LIMIT 20

;