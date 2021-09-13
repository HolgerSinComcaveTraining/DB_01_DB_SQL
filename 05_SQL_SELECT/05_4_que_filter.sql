/* Queries Basic */


SELECT 
    #id,
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs in $",
    payouts AS "Zahlungen p.a.",
    dividend AS "Dividende",
    #industry AS "Branche",
    CONCAT(sector, "|", industry) AS "Operations"
FROM stocks.ccc
#WHERE sector = "Communication Services"
#WHERE industry = "Entertainment"
WHERE sector = "Communication Services" AND dividend < 0.5
#ORDER BY dividend DESC
LIMIT 20 
;