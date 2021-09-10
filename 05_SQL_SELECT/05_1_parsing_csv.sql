/* Datenimport Aktien */


/* DB stocks löschen, falls vorhanden*/
DROP DATABASE IF EXISTS stocks;

/* DB stocks anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS stocks;

/* DB auswählen */
#USE stocks;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS stocks.ccc
(
    id INT NOT NULL PRIMARY KEY, 
    c_name VARCHAR(50) NOT NULL,
    ticker VARCHAR(5) NOT NULL,
    sector VARCHAR(50) NOT NULL,
    industry VARCHAR(60) NOT NULL,	    -- Branche
    no_yrs INT(2) NOT NULL,		        -- Jahre, seitdem ununterbrochen Dividende ausgeschuettet werden
    ranking INT NOT NULL,	            -- Ranking in der Liste
    price DECIMAL(6,2) NOT NULL,		-- Preis pro Aktie in $ per 12/2019
    yield DECIMAL(6,4) NOT NULL,		-- Dividendenrendite (Dividendenanteil *100) / Aktienkurs
    dividend DECIMAL(6,2) NOT NULL,     -- Dividendenanteil pro Aktie (Ausschuettung)
    payouts INT(2) NOT NULL,		    -- wieviel mal wird pro Jahr gezahlt?
    annualized DECIMAL(4,2) NOT NULL	-- jaehrlich


);

/* Struktur der Tabelle anzeigen */
DESCRIBE stocks.ccc;


LOAD DATA LOCAL INFILE "05_SQL_SELECT/data/ccc_dez_2019.csv"
INTO TABLE stocks.ccc
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
;

SELECT * FROM stocks.ccc LIMIT 5;




