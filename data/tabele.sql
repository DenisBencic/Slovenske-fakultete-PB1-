CREATE TABLE univerza (id INTEGER PRIMARY KEY AUTOINCREMENT, naziv TEXT NOT NULL UNIQUE, tip TEXT CHECK (tip IN ('javna', 'zasebna')), rektor TEXT, lokacija TEXT, kontakt TEXT, e_naslov TEXT, spletna_stran TEXT, leto_ustanovitve INTEGER);
CREATE TABLE fakulteta (id INTEGER PRIMARY KEY AUTOINCREMENT, naziv TEXT NOT NULL, dekan TEXT, lokacija TEXT NOT NULL, kontakt INTEGER, e_naslov TEXT NOT NULL, spletna_stran TEXT NOT NULL, leto_ustanovitve INTEGER, univerza INTEGER REFERENCES univerza(id));
CREATE TABLE program (id INTEGER PRIMARY KEY AUTOINCREMENT, naziv TEXT NOT NULL, redni BOOL NOT NULL, izredni BOOL NOT NULL, stopnja TEXT NOT NULL CHECK (stopnja IN ('B1-VSŠ', 'B1-UNI', 'B1-MAG', 'B2-MAG', 'B3-DR')), fakulteta INTEGER REFERENCES fakulteta(id));