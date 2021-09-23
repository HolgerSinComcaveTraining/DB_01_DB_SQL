/* Queries - count */

/*
SELECT 
    DISTINCT sector Industriesektoren
    #DISTINCT industry Branchen
    #DISTINCT payouts Auszahlungsrythmen

FROM stocks.ccc
ORDER BY sector ASC
#LIMIT 50
;

SELECT 
    COUNT(DISTINCT sector) "Anzahl Sektoren"
    #DISTINCT industry Branchen
    #DISTINCT payouts Auszahlungsrythmen

FROM stocks.ccc
#ORDER BY sector ASC
#LIMIT 50
;
*/

/*
SELECT 
    DISTINCT industry Branchen 
FROM stocks.ccc
ORDER BY industry ASC
#LIMIT 50
;

SELECT 
    COUNT(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc
#ORDER BY sector ASC
#LIMIT 50
;
*/

SELECT 
    sector Industriesektoren, 
    COUNT(DISTINCT industry) Branchen
FROM stocks.ccc
WHERE sector LIKE "co%"
GROUP BY sector
HAVING Branchen > 10
ORDER BY Branchen DESC
#LIMIT 50
;




