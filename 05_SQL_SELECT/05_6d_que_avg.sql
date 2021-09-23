/* Aggregationen AVG() */
/*
SELECT
    AVG(price) Durchschnittspreis
FROM stocks.ccc
#WHERE industry = "Banks"
WHERE industry = "Media"

;
*/
SELECT
    sector Industriesektoren,
    COUNT(industry) "Anzahl Firmen",
   # industry Branche,
    ROUND(AVG(price),2) Durchschnittspreis,
    AVG(dividend) Durschschnittsdividende
FROM stocks.ccc
#WHERE industry = "Banks"
#WHERE industry = "Media" OR industry = "Banks"
GROUP BY sector #, industry
#ORDER BY sector ASC
ORDER BY Durschschnittsdividende DESC
;