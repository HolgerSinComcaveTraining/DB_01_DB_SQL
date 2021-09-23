/*  */

USE stocks;

DROP VIEW IF EXISTS renditen;
DROP VIEW IF EXISTS renditen_max;
DROP VIEW IF EXISTS top_werte_im_sektor;


CREATE VIEW renditen AS
SELECT
    c_name,
    ROUND(dividend * payouts * 100 / price, 2) AS rendite
    
FROM stocks.ccc
;

#SELECT * FROM renditen;

CREATE VIEW renditen_max AS
SELECT
    sector,
    ROUND(MAX(yield),2) AS rendite
FROM stocks.ccc
GROUP BY sector
;
    

CREATE VIEW top_werte_im_sektor AS
SELECT
    t1.sector Sektor,
    t1.ticker SYM,
    t1.c_name Firma,
    t1.price Aktienkurs,
    t1.dividend Dividende,
    t2.rendite "Rendite p.a. in %"
FROM stocks.ccc AS t1
INNER JOIN renditen AS t2 
ON t1.c_name = t2.c_name
INNER JOIN renditen_max AS t3
ON t1.sector = t3.sector AND t2.rendite = t3.rendite
ORDER BY t2.rendite DESC
;

SELECT * FROM top_werte_im_sektor LIMIT 20;

SELECT
    c_name Firma,
    industry Branche,
    yield Yield
FROM stocks.ccc
ORDER BY yield DESC
LIMIT 20
;




