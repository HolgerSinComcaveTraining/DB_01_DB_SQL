/* Queries Filtern mit where */

/*
SELECT 
    #id,
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    payouts AS "Zahlungen p.a.",
    dividend AS "Dividende",
    #industry AS "Branche",
    CONCAT(sector, "|", industry) AS "Operations"
FROM stocks.ccc
#WHERE sector = "Communication Services"
#WHERE industry = "Entertainment"
#WHERE sector = "Communication Services" AND dividend < 0.5
#WHERE payouts = 12
#WHERE sector = "Communication Services" OR payouts = 12
WHERE sector = "Communication Services" AND NOT industry = "Media"
ORDER BY price DESC
LIMIT 20 
;
*/

/*
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    sector AS "Sektor",
    industry AS "Branche"
    
FROM stocks.ccc
#WHERE industry LIKE "%ment"
#WHERE industry LIKE "%ood%"
#WHERE industry LIKE "_ir%" AND industry NOT LIKE "%Logist%"
#where sector = "Financials" AND industry NOT IN ("INSURANCE", "Banks")
#where industry LIKE "%ever%"
where industry IN ("Banks", "Beverages")
ORDER BY ticker ASC
LIMIT 400 
;
*/

/*
SELECT 
    c_name AS "Unternehmen"
 
FROM stocks.ccc
WHERE c_name RLIKE "^[1-9]"
ORDER BY ticker ASC
LIMIT 400 
;
*/



SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    sector AS "Sektor",
    industry AS "Branche"
    
FROM stocks.ccc
#WHERE sector = "Financials" AND price BETWEEN 30 AND 50
WHERE sector = "Financials" AND price NOT BETWEEN 20 AND 250
ORDER BY price DESC
LIMIT 400 
;