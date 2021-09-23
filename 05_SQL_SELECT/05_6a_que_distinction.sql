/* Queries - Distinct */

/*
SELECT 
    #DISTINCT sector Industriesektoren,
    #DISTINCT industry Branchen
    DISTINCT payouts Auszahlungsrythmen

FROM stocks.ccc
#ORDER BY industry ASC
#LIMIT 50
;
*/

SELECT 
    c_name Unternehmen,
    industry Branche
    
FROM stocks.ccc
WHERE payouts = 12
ORDER BY Branche ASC
#LIMIT 50
;


